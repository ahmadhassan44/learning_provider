import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  final List<int> number;
  const Second(this.number, {super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.number.add(widget.number.last + 1);
          });
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
                  widget.number[index].toString(),
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
