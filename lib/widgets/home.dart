import 'package:flutter/material.dart';
import 'package:learning_provider/widgets/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int label = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numbers.add(++label);
            label = numbers.last;
          });
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
              label.toString(),
              style: const TextStyle(
                fontSize: 26,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: numbers.length,
                itemBuilder: (context, index) => Text(
                  numbers[index].toString(),
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Second(numbers)));
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
    );
  }
}
