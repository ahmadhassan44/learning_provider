import 'package:flutter/material.dart';
import 'package:learning_provider/list_provider.dart';
import 'package:learning_provider/widgets/second.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersList>(
      builder: (context, numbersList, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersList.add();
          },
          child: const Icon(
            Icons.add,
            color: Colors.red,
          ),
        ),
        appBar: AppBar(
          foregroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                numbersList.label.toString(),
                style: const TextStyle(
                  fontSize: 26,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numbersList.numbers.length,
                  itemBuilder: (context, index) => Text(
                    numbersList.numbers.toList()[index].toString(),
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Second(numbersList.numbers)));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: const Text("Navigate"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
