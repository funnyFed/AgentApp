import 'package:app_new/drawer/conv_737_screen.dart';
import 'package:app_new/drawer/conv_screen.dart';
import 'package:flutter/material.dart';

class CraftChoose extends StatefulWidget {
  const CraftChoose({super.key});

  @override
  State<CraftChoose> createState() => _CraftChooseState();
}

class _CraftChooseState extends State<CraftChoose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Типы ВС',
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              child: SizedBox(
                height: 220,
                width: 310,
                child: Image.asset(
                  'assets/images/logos/sukhoy.png',
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ConvApp()));
              },
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              child: SizedBox(
                height: 220,
                width: 290,
                child: Image.asset(
                  'assets/images/logos/airbus.png',
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ConvApp()));
              },
            ),
            const SizedBox(
              height: 39,
            ),
            GestureDetector(
              child: SizedBox(
                height: 110,
                width: 260,
                child: Image.asset(
                  'assets/images/logos/boeing.png',
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Conv737())));
              },
            ),
          ],
        )),
      ),
    );
  }
}
