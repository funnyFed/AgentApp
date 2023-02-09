// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:app_new/drawer/conv_737_screen.dart';
import 'package:flutter/material.dart';

class DopInfo extends StatelessWidget {
  const DopInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Доп Инфо'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Доп информация',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Sita телеграммы CPM',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Sita телеграммы LDM',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Телеграммы BRM',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Телеграммы LIR',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Телеграммы Tripinfo',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Колодки',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Снятие багажа',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Фото к задаче',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Ресурсы на рейсе',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Ресурсы на локации',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Доп.параметры рейса',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            const _FuelInfo(),
            const Divider(
              height: 0,
            ),
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Бар код',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 60,
          child: BottomAppBar(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Expanded(
                    child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Свернуть',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ))
              ]),
            ),
          )),
    );
  }
}

class _FuelInfo extends StatelessWidget {
  const _FuelInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Conv737()));
        },
        contentPadding: const EdgeInsets.all(0),
        title: const Text(
          'Калькулятор топлива',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
