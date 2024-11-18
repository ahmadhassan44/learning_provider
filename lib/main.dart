import 'package:flutter/material.dart';
import 'package:learning_provider/list_provider.dart';
import 'package:learning_provider/widgets/home.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumbersList()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

void main() {
  runApp(const MyWidget());
}
