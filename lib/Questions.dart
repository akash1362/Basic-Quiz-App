import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String index;
  Questions(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        index,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
          color: Colors.red[600],
        ),
      ),
    );
  }
}
