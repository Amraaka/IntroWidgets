import 'package:flutter/material.dart';
import 'package:introwidgets/immutable_widget.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Demo app"),
        actions: [
          const Padding(padding: EdgeInsets.all(10.0), child: Icon(Icons.edit)),
        ],
      ),
      body: Center(
        child: const AspectRatio(aspectRatio: 1.0, child: ImmutableWidget()),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.amber,
          child: const Center(child: const Text("Hi drawer")),
        ),
      ),
    );
  }
}
