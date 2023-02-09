import 'package:app_new/drawer/attention.dart';
import 'package:flutter/material.dart';

class Conv737 extends StatefulWidget {
  const Conv737({super.key});

  @override
  State<Conv737> createState() => _Conv737State();
}

class _Conv737State extends State<Conv737> {
  final controllerResLt = TextEditingController(); //результат в литрах
  final controllerResKg = TextEditingController(); //результат в килограммах
  final controllerResRightWing =
      TextEditingController(); //результат левое полукрыло
  final controllerResLeftWing =
      TextEditingController(); //результат правое полукрыло
  final controllerResCenter = TextEditingController();
  final controllerZero = TextEditingController(); //результат центроплан

  var reminder = 0;
  var captain = 0;
  var density = 0.0;
  var total = 0;
  var liters = 0.0;
  var wingsResult = 3850;
  var left = 0;
  var right = 0;
  var center = 0;
  var centerRes = 0;
  var finliters = 0;

  void convert() {
    reminder = left + right + center;
    total = captain - reminder;
    liters = total * density;
    finliters = liters.round();
    centerRes = captain - (wingsResult * 2);
    controllerResKg.text = total.toString();
    controllerResLt.text = finliters.toString();
    controllerResCenter.text = centerRes.toString();
    controllerResLeftWing.text = wingsResult.toString();
    controllerResRightWing.text = wingsResult.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Калькулятор топлива'),
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      onChanged: (value) {
                        right = int.parse(value);
                      },
                      enabled: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Правый бак (ОСТАТОК) ',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )),
                    Expanded(
                        child: TextField(
                      onChanged: (value) {
                        left = int.parse(value);
                      },
                      enabled: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Левый бак (ОСТАТОК)',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (rem) {
                    center = int.parse(rem);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Центроплан (ОСТАТОК)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (cap) {
                    captain = int.parse(cap);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Командирская заправка (КИЛОГРАММЫ)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (dense) {
                    density = double.parse(dense);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Плотность (УКАЗАНА В ТАЛОНЕ ТЗК)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controllerResKg,
                  enabled: false,
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                      labelText: 'Кол-во для заправки (КИЛОГРАММЫ)',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controllerResLt,
                  enabled: false,
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                      labelText: 'Кол-во для заправки (ЛИТРЫ)',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      controller: controllerResRightWing,
                      enabled: false,
                      decoration: InputDecoration(
                        labelText: 'Правый бак',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )),
                    Expanded(
                        child: TextField(
                      controller: controllerResLeftWing,
                      enabled: false,
                      decoration: InputDecoration(
                          labelText: 'Левый бак',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controllerResCenter,
                  enabled: false,
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                      labelText: 'Центроплан',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {
                  if (captain < 7700 || captain > 22000) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text(
                          'ВНИМАНИЕ!',
                          style: TextStyle(color: Colors.red),
                        ),
                        content: const Text('Данные некорректны!'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Attention())),
                            child: const Text(
                              'Инфо',
                              style: TextStyle(color: Colors.blueGrey),
                            ),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text(
                              'OK',
                              style: TextStyle(color: Colors.blueGrey),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    convert();
                  }
                },
                child: const Text(
                  'Посчитать',
                  style: TextStyle(fontSize: 17, color: Colors.blueGrey),
                ),
              )
            ],
          ),
        ));
  }
}
