import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:learning_provider/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  final Queue<int> number;
  const Second(this.number, {super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersList>(
      builder: (context, numbersList, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersList.add();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("Second Screen"),
        ),
        body: Center(
          child: Column(
            children: [
              const Text(
                "Second Screen",
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.number.length,
                  itemBuilder: (context, index) => Text(
                    numbersList.numbers.toList()[index].toString(),
                    style: const TextStyle(fontSize: 24),
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
