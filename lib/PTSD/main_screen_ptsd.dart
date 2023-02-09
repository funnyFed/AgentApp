// Заменить все SizedBox (с содержимым) на Container. Проверить, что получится.
// Вынести сожержимое каждый контейнер в отдельный класс (Extract Widget) Проверить на удобство.

// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:app_new/PTSD/ptsd_screen_fulltask.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPTSD extends StatefulWidget {
  const MainPTSD({super.key});

  @override
  State<MainPTSD> createState() => _MainPTSDState();
}

class _MainPTSDState extends State<MainPTSD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: ListView(children: const [
            _FioTimeString(),
            _VedushiyString(),
            _NumberTimeString(),
            Divider(
              color: Colors.black,
              height: 0,
            ),
            _DestinationString(),
            Divider(
              height: 8,
              color: Colors.black,
            ),
          ]),
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
                                            Navigator.pop(context);
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
                          onPressed: () {},
                          child: const Text(
                            'Смена',
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

class _DestinationString extends StatelessWidget {
  const _DestinationString({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FullPTSD()));
        },
        contentPadding: const EdgeInsets.all(0),
        title: const Text(
          'Самара(KUF)',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _NumberTimeString extends StatelessWidget {
  const _NumberTimeString({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FullPTSD()));
        },
        title: const Text(
          'SU1214 17:45',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _VedushiyString extends StatelessWidget {
  const _VedushiyString({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FullPTSD()));
        },
        contentPadding: const EdgeInsets.all(0),
        tileColor: Colors.green,
        title: const Text(
          'Ведущий Агент вылет',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _FioTimeString extends StatelessWidget {
  const _FioTimeString({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Text(
          '16:43 v.286 Иванов И.И.',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
