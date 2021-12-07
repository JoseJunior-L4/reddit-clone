import 'package:flutter/material.dart';

class Voters extends StatefulWidget {
  @override
  final int voteCount;
  Voters({required this.voteCount});
  _VotersState createState() => _VotersState(voteCount: voteCount);
}

class _VotersState extends State<Voters> {
  int voteCount;
  bool upvoted = false, downvoted = false;

  Color upN = Color.fromRGBO(137, 141, 144, 1),
      downN = Color.fromRGBO(137, 141, 144, 1);
  _VotersState({required this.voteCount});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                if (downvoted) {
                  downvoted = false;
                  downN = Color.fromRGBO(137, 141, 144, 1);
                }
                upvoted = true;
                upN = Colors.deepOrangeAccent;
                this.voteCount++;
              });
            },
            icon: Icon(
              Icons.arrow_upward_rounded,
              color: upN,
            )),
        Text("${this.voteCount}",
            style: TextStyle(
              color: Color.fromRGBO(137, 141, 144, 1),
              fontWeight: FontWeight.bold,
            )),
        IconButton(
            onPressed: () {
              setState(() {
                if (upvoted) {
                  upvoted = false;
                  upN = Color.fromRGBO(137, 141, 144, 1);
                }
                downvoted = true;
                downN = Colors.deepPurpleAccent;
                this.voteCount--;
              });
            },
            icon: Icon(
              Icons.arrow_downward_rounded,
              color: downN,
            )),
      ],
    );
  }
}
