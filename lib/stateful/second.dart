import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key, required this.san}) : super(key: key);
  int san;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void decrement() {
    setState(() {
      widget.san--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body: Center(
        child: Text(
          '${widget.san}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          decrement();
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
