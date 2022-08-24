import 'dart:async';

import 'package:flutter/material.dart';
import 'elapsed_time_text.dart';

class Stopwatch extends StatefulWidget {
  @override
  _StopwatchState createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  late DateTime _initialTime;
  Duration _elapsedTime = Duration.zero;
  late final Timer _timer;
  @override
  void initState() {
    super.initState();
    _initialTime = DateTime.now();
    _timer = Timer.periodic(Duration(milliseconds: 50), (_) {
      final now = DateTime.now();
      setState(() {
        _elapsedTime = now.difference(_initialTime);
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElapsedTimeText(
      elapsed: _elapsedTime,
    );
  }
}
