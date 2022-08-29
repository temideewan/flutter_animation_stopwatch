import "dart:math";
import 'package:flutter/material.dart';

// import 'elapsed_time_text.dart';

class StopWatchRenderer extends StatelessWidget {
  StopWatchRenderer({required this.elapsed});
  final Duration elapsed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform(
            transform: Matrix4.identity()
              ..translate(50.0, 0.0, 0.0)
              ..rotateZ(pi / 4),
            // transform:
            //     Matrix4.translationValues(50, 0, 0) * Matrix4.rotationZ(pi / 4),
            alignment: Alignment.center,
            child: Container(color: Colors.indigo)),
        // ElapsedTimeText(
        //   elapsed: elapsed,
        // ),
      ],
    );
  }
}
