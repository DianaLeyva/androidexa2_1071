import 'package:flutter/material.dart';
import 'posts/post_1.dart';
import 'posts/post_2.dart';
import 'posts/post_3.dart';

class PaginaPageView extends StatelessWidget {
  PaginaPageView({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
