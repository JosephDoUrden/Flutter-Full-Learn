import 'package:flutter/material.dart';
import '../core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const RandomImage(),
              //dense: true,
              onTap: () {},
              subtitle: const Text('How do you use your card'),
              leading: const Icon(Icons.money),
              trailing: const SizedBox(
                width: 20,
                child: SizedBox(width: 20, child: Icon(Icons.chevron_right)),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
