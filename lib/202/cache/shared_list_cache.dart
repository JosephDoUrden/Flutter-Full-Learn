// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_full_learn/202/cache/shared_learn_cache.dart';
import 'package:flutter_full_learn/202/cache/shared_manager.dart';
import 'package:flutter_full_learn/202/cache/user_cache/user_cache_manager.dart';
import 'package:flutter_full_learn/202/cache/user_model.dart';

class SharedListCache extends StatefulWidget {
  const SharedListCache({super.key});

  @override
  State<SharedListCache> createState() => _SharedListCacheState();
}

class _SharedListCacheState extends LoadingStateful<SharedListCache> {
  late final UserCacheManager userCacheManager;
  List<User> _users = [];

  @override
  void initState() {
    super.initState();
    initializeAndSave();
  }

  Future<void> initializeAndSave() async {
    changeLoading();
    final SharedManager manager = SharedManager();
    await manager.init();
    userCacheManager = UserCacheManager(manager);
    _users = userCacheManager.getItems() ?? [];
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isLoading ? const CircularProgressIndicator(color: Colors.white) : null,
        actions: isLoading
            ? null
            : [
                IconButton(
                  onPressed: () async {
                    changeLoading();
                    await userCacheManager.saveItems(_users);
                    changeLoading();
                  },
                  icon: const Icon(Icons.download_for_offline_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_circle_outline),
                )
              ],
      ),
      body: _UserListView(users: _users),
    );
  }
}

class _UserListView extends StatelessWidget {
  const _UserListView({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text(users[index].name ?? ''),
            subtitle: Text(users[index].description ?? ''),
            trailing: Text(
              (users[index].url ?? ''),
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
          ),
        );
      },
    );
  }
}
