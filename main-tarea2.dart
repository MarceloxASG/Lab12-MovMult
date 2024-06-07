import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const PickerExample(),
    );
  }
}

class PickerExample extends StatefulWidget {
  const PickerExample({Key? key}) : super(key: key);

  @override
  State<PickerExample> createState() => _PickerExampleState();
}

class _PickerExampleState extends State<PickerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comparacion de botón'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Action for Material Button
              },
              child: const Text('Material Button'),
            ),
            const SizedBox(height: 20),
            CupertinoButton(
              onPressed: () {
                // Action for Cupertino Button
              },
              color: CupertinoColors.activeBlue, // Background color
              child: const Text('Cupertino Button'),
            ),
          ],
        ),
      ),
    );
  }
}