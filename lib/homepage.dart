import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

onPick(String choice) {
  int min = 1;
  int max = 4;
  Random random = Random();

  int botChoice = min + random.nextInt(max - min);

  if (choice == "Rock") {
    // ignore: avoid_print
    print("you chose : $choice and the bot chose : $botChoice");

    if (botChoice == 3) {
      return "you won";
    } else if (botChoice == 2) {
      return "you lost";
    } else {
      return "its a draw";
    }
  }
  if (choice == "Paper") {
    // ignore: avoid_print
    print("you chose : $choice and the bot chose : $botChoice");

    if (botChoice == 1) {
      return "you won";
    } else if (botChoice == 3) {
      return "you lost";
    } else {
      return "its a draw";
    }
  }
  if (choice == "Scissors") {
    // ignore: avoid_print
    print("you chose : $choice and the bot chose : $botChoice");

    if (botChoice == 2) {
      return "you won";
    } else if (botChoice == 1) {
      return "you lost";
    } else {
      return "its a draw";
    }
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  String choice = "Rock";
                  // onPick(choice);
                  // ignore: avoid_print
                  print(onPick(choice));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.orange,
                    child: const Center(child: Text("Rock")),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  String choice = "Paper";
                  // onPick(choice);
                  // ignore: avoid_print
                  print(onPick(choice));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                    child: const Center(child: Text("Paper")),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  String choice = "Scissors";
                  // onPick(choice);
                  // ignore: avoid_print
                  print(onPick(choice));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                    child: const Center(child: Text("Scissors")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
