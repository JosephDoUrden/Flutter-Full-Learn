import 'package:flutter/material.dart';
import '../../../product/extension/string_extension.dart';

import '../viewModel/reqres_view_model.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({super.key});

  @override
  State<ReqResView> createState() => _ReqResViewState();
}

class _ReqResViewState extends ReqresViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isLoading ? const CircularProgressIndicator() : null,
      ),
      body: ListView.builder(
        itemCount: resources.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Color(resources[index].color?.colorValue ?? 0),
            child: Text(resources[index].name ?? ''),
          );
        },
      ),
    );
  }
}
