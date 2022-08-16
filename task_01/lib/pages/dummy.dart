import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const text = "dummy page";

    return Scaffold(
      appBar: AppBar(
        title: const Text(text),
      ),
      body: const Text(text),
    );
  }
}
