import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback reset;
  String get print {
    return "Your Score" + score.toString();
  }

  Result(this.reset, this.score);
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(print),
          Text("End of Quiz"),
          ElevatedButton(
            onPressed: reset,
            child: Text('Restart quiz'),
          ),
        ],
      ),
    );
  }
}
