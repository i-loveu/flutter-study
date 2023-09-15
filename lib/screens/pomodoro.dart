import 'dart:async';

import 'package:flutter/material.dart';

class Pomodoro extends StatefulWidget {
  const Pomodoro({super.key});

  @override
  State<Pomodoro> createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  static const fiftyMin = 900;
  static const twentyFiveMinutes = 1500;
  int nowMin = 25;
  int totalSeconds = 5;
  bool isRunning = false;
  int totalPomodoros = 3;

  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodoros = totalPomodoros + 1;
        isRunning = false;
        totalSeconds = twentyFiveMinutes;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  String minFormat(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split('.')[0].split(':')[1];
  }

  String secFormat(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split('.')[0].split(':')[2];
  }

  void setMin(int seconds) {
    setState(() {
      isRunning = false;
      totalSeconds = seconds;
    });
  }

  void fiftyMinGo() {
    setMin(fiftyMin);
    setState(() {
      nowMin = 15;
    });
  }

  void twentyMinGo() {
    setMin(1200);
    setState(() {
      nowMin = 20;
    });
  }

  void twentyFiveMinGo() {
    setMin(1500);
    setState(() {
      nowMin = 25;
    });
  }

  void thirtyMinGo() {
    setMin(1800);
    setState(() {
      nowMin = 30;
    });
  }

  void thirtyFiveMinGo() {
    setMin(2100);
    setState(() {
      nowMin = 35;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[700],
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  "POMOTIMER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomCenter,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    color: Colors.white,
                    child: Text(
                      minFormat(totalSeconds),
                      style: const TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 80,
                      ),
                    ),
                  ),
                  const Text(
                    ':',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Text(
                      secFormat(totalSeconds),
                      style: const TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 80,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Flexible(
              flex: 3,
              child: Center(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: fiftyMinGo,
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: nowMin == 15
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 8),
                              child: Text(
                                "15",
                                style: TextStyle(
                                  color: nowMin == 15
                                      ? Colors.deepOrange
                                      : Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: twentyMinGo,
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: nowMin == 20
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 8),
                              child: Text(
                                "20",
                                style: TextStyle(
                                  color: nowMin == 20
                                      ? Colors.deepOrange
                                      : Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: twentyFiveMinGo,
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: nowMin == 25
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 8),
                              child: Text(
                                "25",
                                style: TextStyle(
                                  color: nowMin == 25
                                      ? Colors.deepOrange
                                      : Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: thirtyMinGo,
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: nowMin == 30
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 8),
                              child: Text(
                                "30",
                                style: TextStyle(
                                  color: nowMin == 30
                                      ? Colors.deepOrange
                                      : Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: thirtyFiveMinGo,
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: nowMin == 35
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 8),
                              child: Text(
                                "35",
                                style: TextStyle(
                                  color: nowMin == 35
                                      ? Colors.deepOrange
                                      : Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: isRunning ? onPausePressed : onStartPressed,
                      iconSize: 80,
                      color: Colors.white,
                      icon: Icon(
                        isRunning
                            ? Icons.pause_circle_filled_outlined
                            : Icons.play_circle_fill_outlined,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "${totalPomodoros % 4}/4",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "ROUND",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "${totalPomodoros ~/ 4}/12",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "GOAL",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
