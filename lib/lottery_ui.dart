import 'dart:math';

import 'package:flutter/material.dart';

class LotteryAppUi extends StatefulWidget {
  const LotteryAppUi({super.key});

  @override
  State<LotteryAppUi> createState() => _LotteryAppUiState();
}

int winnum = 4;
Random rand = Random();
int r = 0;

class _LotteryAppUiState extends State<LotteryAppUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Lottery App",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lottery winning number is: \n$winnum",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                ////////////////////////////////////child
                child: winnum == r ? truenum() : wrong_number(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            r = rand.nextInt(10);
          });
        },
        child: const Icon(
          Icons.refresh,
          size: 25,
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget wrong_number() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error,
          size: 50,
          color: Colors.red,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Better luck next time your number is $r \n Try Again",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black54,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

Widget truenum() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(
        Icons.check_circle_rounded,
        size: 50,
        color: Colors.green,
      ),
      const SizedBox(
        height: 20,
      ),
      Text(
        "Congratulation You have won the lottery.\nyour number is $r",
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black54,
          fontWeight: FontWeight.w700,
        ),
      ),
    ],
  );
}
