import 'package:app_new/PTSD/main_screen_ptsd.dart';
import 'package:app_new/drawer/craft_choose_screen.dart';
import 'package:flutter/material.dart';
import 'aircraft_info_screen.dart';
import 'app_info_screen.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Агент v0.1.4beta",
          style: TextStyle(fontSize: 27, color: Colors.white),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xffffffff),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                'Библиотека \nАгента',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.local_gas_station),
              title: const Text(
                'Заправка ВС',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CraftChoose()));
              },
            ),
            ListTile(
                leading: const Icon(Icons.local_airport),
                title: const Text(
                  'Lorem ipsum',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AirInfo()));
                }),
            ListTile(
                leading: const Icon(Icons.local_airport),
                title: const Text(
                  'Lorem ipsum',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AirInfo()));
                }),
            ListTile(
                leading: const Icon(Icons.local_airport),
                title: const Text(
                  'Lorem ipsum',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AirInfo()));
                }),
            ListTile(
                leading: const Icon(Icons.local_airport),
                title: const Text(
                  'Lorem ipsum',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AirInfo()));
                }),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text(
                'О приложении',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutApp()));
              },
            )
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Image(image: AssetImage("assets/images/YakovlevSmall.png")),
            const SizedBox(
              height: 30,
            ),
            const Text(
              ' Талант - это не дар божий и не только\n прирожденная способность человека к\n той или другой деятельности, это тоже\n прежде всего труд, труд и еще раз труд\n умноженный на терпение.\n Яковлев А.С.',
              style: TextStyle(fontSize: 20, color: Colors.black38),
            ),
            const SizedBox(
              height: 25,
            ),
            TextButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainPTSD())),
              child: const Text(
                'Перейти в ПТСД',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
