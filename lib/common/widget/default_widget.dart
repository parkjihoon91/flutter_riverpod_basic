import 'package:flutter/material.dart';

class DefaultWidget extends StatelessWidget {
  final String title;
  final Widget widget;

  const DefaultWidget({
    super.key,
    required this.title,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: widget,
      ),
    );
  }
}
