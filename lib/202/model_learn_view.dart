import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  @override
  void initState() {
    super.initState();
    final user1 = PostModel1()
      ..userId = 1
      ..body = 'ysf';
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'a', 'b');
    user2.body = 'c';
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
