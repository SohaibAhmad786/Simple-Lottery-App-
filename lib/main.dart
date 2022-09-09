import 'package:flutter/material.dart';
import 'package:simple_lottery_app/lottery_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LotteryAppUi(),
    );
  }
}
