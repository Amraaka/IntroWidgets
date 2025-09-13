import 'package:flutter/material.dart';
import 'package:introwidgets/text_layout.dart';
// import 'package:introwidgets/immutable_widget.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Demo app"),
        actions: [
          const Padding(padding: EdgeInsets.all(8.0), child: Icon(Icons.edit)),
        ],
      ),
      body: Column(
        children: [
          // AspectRatio(aspectRatio: 1.0, child: ImmutableWidget()),
          Image.asset('/assets/images/colaroda.jpg'),

          TextLayout(),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.amber,
          child: const Center(child: Text("Hi drawer")),
        ),
      ),
    );
  }
}
