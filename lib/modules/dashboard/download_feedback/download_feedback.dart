import 'package:flutter/material.dart';

class AlertDialogBox extends StatelessWidget {
  const AlertDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AlertDialog Sample')),
        body: const Center(
          child: AlertDialogEx(),
        ),
      ),
    );
  }
}

class AlertDialogEx extends StatelessWidget {
  const AlertDialogEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AlertDialog(
          title: const Text('Download'),
          content: const Text('Feedback downloaded'),
          actions: <Widget>[
            TextButton(
              // onPressed: () => Navigator.pop(context),
                onPressed: () {},
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Ok'),
                ))
          ],
        ),
      ),
    );
  }
}