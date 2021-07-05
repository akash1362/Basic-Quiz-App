import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandle;
  final String text;

  Answer(this.selectHandle, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(text),
        onPressed: selectHandle,
      ),
    );
  }
}
