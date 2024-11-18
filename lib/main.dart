import 'package:flutter/material.dart';
import 'package:learning_provider/widgets/home.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

void main() {
  runApp(const MyWidget());
}
