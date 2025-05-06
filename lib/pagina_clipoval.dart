import 'package:flutter/material.dart';

class PaginaClipOval extends StatelessWidget {
  const PaginaClipOval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clip Oval')),
      body: Center(
        child: ClipOval(
          child: Image.asset(
            'assets/images/marvel_heroes/ant-man.jpg',
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
