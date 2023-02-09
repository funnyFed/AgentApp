// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Услуги'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: ListView(
            children: const [
              _VedushiyAgent(),
              Divider(
                height: 8,
                color: Colors.black,
              ),
              _FlightTimeInfo(),
              Divider(
                height: 8,
                color: Colors.black,
              ),
              _DestinationCity(),
              Divider(
                height: 8,
                color: Colors.black,
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
                            onPressed: () {},
                            child: const Text(
                              'Меню',
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
                              'Доб/заказ',
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
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Свернуть',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ))),
                  ],
                ),
              )),
        ));
  }
}

class _DestinationCity extends StatelessWidget {
  const _DestinationCity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ListTile(
        title: Text(
          'Самара(KUF)',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _FlightTimeInfo extends StatelessWidget {
  const _FlightTimeInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Text(
          'SU1214 17:45',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _VedushiyAgent extends StatelessWidget {
  const _VedushiyAgent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Text(
          'Ведущий агент вылет МС 131(А)',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
