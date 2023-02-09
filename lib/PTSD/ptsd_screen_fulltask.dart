//import 'package:app_new/drawer/main_screen.dart';
// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:app_new/PTSD/dop_ifo_screen.dart';
import 'package:app_new/PTSD/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FullPTSD extends StatefulWidget {
  const FullPTSD({super.key});

  @override
  State<FullPTSD> createState() => _FullPTSDState();
}

class _FullPTSDState extends State<FullPTSD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  '16:43 v.286 Иванов И.И.',
                  //textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            const ListTile(
              tileColor: Colors.green,
              title: Text(
                'Ведущий Агент вылет',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              height: 0,
            ),
            const ListTile(
              title: Text(
                'SU1214 17:45',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 0,
            ),
            const ListTile(
              title: Text(
                'Самара(KUF)',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 0,
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        '16:25-17:55',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    thickness: 0.0,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        '131(A)',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 0,
            ),
            const SizedBox(
              height: 25,
              child: ListTile(
                tileColor: Colors.white,
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 0,
            ),
            const SizedBox(
              height: 40,
              child: ListTile(
                title: Text(
                  'MECH_ENG_DEP',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 0,
            ),
            const SizedBox(
              height: 40,
              child: ListTile(
                title: Text(
                  '73H 73102',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 0,
            ),
            const SizedBox(
              height: 270,
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Cтатус задания: начато\nPCC:J/J\nПрилет: ВВЛ\nВылет: ВВЛ\nKMC\nA/C FuelDep=7700\nБукс.Вылет\nТелетрап вылет',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                tileColor: Colors.blue,
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 0,
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Закончить',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  const VerticalDividerWidget(),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Свернуть',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: BottomAppBar(
            elevation: 6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text("Выход"),
                                    titleTextStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                    actionsOverflowButtonSpacing: 20,
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const FullPTSD()));
                                          },
                                          child: const Text(
                                            "Нет",
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 18),
                                          )),
                                      TextButton(
                                          onPressed: () {
                                            SystemNavigator.pop();
                                          },
                                          child: const Text(
                                            "Да",
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 18),
                                          )),
                                    ],
                                    content: const Text(
                                        "Вы действительно хотите выйти?"),
                                  );
                                });
                          },
                          child: const Text(
                            'Выход',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ))),
                  const VerticalDivider(
                    thickness: 0.0,
                    color: Colors.black,
                  ),
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DopInfo()));
                          },
                          child: const Text(
                            'Доп',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ))),
                  const VerticalDivider(
                    thickness: 0.0,
                    color: Colors.black,
                  ),
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Services()));
                          },
                          child: const Text(
                            'Услуги',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ))),
                ],
              ),
            )),
      ),
    );
  }
}

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      width: 0.5,
      color: Colors.black,
    );
  }
}
