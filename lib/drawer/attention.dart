import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Attention extends StatelessWidget {
  const Attention({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text('Описание ошибки'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Center(
                child: Text(
                  'Взоможные варианты: \n"Командирская заправка" - значения превышены\n или занижены, для стандартной конфигурации.\n Центровка и масса критически важны для ВС!\n\n Подробное описание:',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
