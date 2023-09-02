import 'package:flutter/material.dart';
import 'shared_manager.dart';
import 'user_model.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStateful<SharedLearn> {
  int _currentValue = 0;

  late final SharedManager _manager;

  late final List<User> userItems;

  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    userItems = UserItems().users;
    _initialize();
  }

  Future<void> _initialize() async {
    changeLoading();
    await _manager.init();
    changeLoading();

    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    // Obtain shared preferences.
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // Try reading data from the 'counter' key. If it doesn't exist, returns null.
    // final int? counter = prefs.getInt('counter');
    //_onChangeValue(counter.toString());

    _onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
  }

  void _onChangeValue(String value) {
    final value0 = int.tryParse(value);
    if (value0 != null) {
      setState(() {
        _currentValue = value0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentValue.toString()),
        actions: [_loading()],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _saveValueButton(),
          _removeValueButton(),
        ],
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              _onChangeValue(value);
            },
          ),
        ],
      ),
    );
  }

  Center _loading() {
    return Center(
      child: isLoading
          ? const CircularProgressIndicator(
              color: Colors.white,
            )
          : const SizedBox.shrink(),
    );
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () async {
        changeLoading();
        // Obtain shared preferences.
        // final SharedPreferences prefs = await SharedPreferences.getInstance();
        // Save an integer value to 'counter' key.
        // await prefs.setInt('counter', _currentValue);
        await _manager.saveString(SharedKeys.counter, _currentValue.toString());
        changeLoading();
      },
    );
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
      child: const Icon(Icons.remove),
      onPressed: () async {
        changeLoading();
        // Obtain shared preferences.
        // final SharedPreferences prefs = await SharedPreferences.getInstance();
        // Remove an integer value to 'counter' key.
        // await prefs.remove('counter');
        await _manager.removeItem(SharedKeys.counter);
        changeLoading();
      },
    );
  }
}

class UserItems {
  late final List<User> users;
  UserItems() {
    users = [
      User('ysf', 'description', 'yusufhan.dev'),
      User('ysf2', 'description2', 'yusufhan.dev'),
      User('ysf3', 'description3', 'yusufhan.dev'),
      User('ysf4', 'description4', 'yusufhan.dev'),
    ];
  }
}

abstract class LoadingStateful<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
