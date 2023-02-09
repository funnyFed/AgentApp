import 'package:flutter/material.dart';

class AirInfo extends StatelessWidget {
  const AirInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Информация'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(children: const [
          SizedBox(
            height: 240,
          ),
          Center(
            child: Text(
              '           Oops!\nCome back later ;)',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}
