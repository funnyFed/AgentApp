import 'package:app_new/drawer/attention.dart';
import 'package:flutter/material.dart';

class ConvApp extends StatefulWidget {
  const ConvApp({super.key});

  @override
  State<ConvApp> createState() => _ConvAppState();
}

class _ConvAppState extends State<ConvApp> {
  final controllerResLt = TextEditingController();

  final controllerResKg = TextEditingController();

  var reminder = 0;

  var captain = 0;

  var density = 0.0;

  var total = 0;

  var liters = 0.0;

  void convert() {
    total = captain - reminder;
    liters = total * density;
    var finliters = liters.round();
    controllerResKg.text = total.toString();
    controllerResLt.text = finliters.toString();
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: (rem) {
                  reminder = int.tryParse(rem)!;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Остаток (СУММАРНО)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                onChanged: (cap) {
                  captain = int.tryParse(cap)!;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Командирская заправка (КИЛОГРАММЫ)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                onChanged: (dense) {
                  density = double.tryParse(dense)!;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Плотность (УКАЗАНА В ТАЛОНЕ ТЗК)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: controllerResKg,
                enabled: false,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                    labelText: 'Кол-во для заправки (КИЛОГРАММЫ)',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: controllerResLt,
                enabled: false,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                    labelText: 'Кол-во для заправки (ЛИТРЫ)',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 24,
              ),
              TextButton(
                onPressed: () {
                  if (captain < 1 || captain > 20250) {
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
            ]),
          ),
        ),
      ),
    );
  }
}
