import 'package:flutter/material.dart';

class NavigateHomeDetailView extends StatefulWidget {
  const NavigateHomeDetailView({super.key, this.id});
  final String? id;

  @override
  State<NavigateHomeDetailView> createState() => _NavigateHomeDetailViewState();
}

class _NavigateHomeDetailViewState extends State<NavigateHomeDetailView> {
  String? _id;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final _modelId = ModalRoute.of(context)?.settings.arguments;

      setState(() {
        _id = _modelId is String ? _modelId : widget.id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_id Detail Page'),
      ),
    );
  }
}
