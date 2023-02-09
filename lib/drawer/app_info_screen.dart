import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('О Приложении'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Row(
        children: const [
          // Padding(padding: EdgeInsets.only(top: 5.0)),
          Text(
            'Ramp Agent\'s Application\nVersion: 0.1.4 beta \nDeveloped by: Fedosov Ilya\nStatus: For education only!',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
