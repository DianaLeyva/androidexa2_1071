import 'package:flutter/material.dart';

class PaginaAppBar extends StatelessWidget {
  const PaginaAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        title: const Text("A P P B A R"),
        // left positioned
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: const Icon(Icons.menu),
        ),
        // right positioned
        actions: [
          IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
