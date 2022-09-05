import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'componentes/bottomcalendar.dart';
import 'componentes/bottomwallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

int _opcaoselecionada = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime(2021),
        lastDay: DateTime(2023),
      ),
      endDrawer: Drawer(
          child: ListView(children: <Widget>[
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("Perfil"),
          onTap: () {
            debugPrint('drawer');
          },
        ),
        ListTile(
          leading: const Icon(Icons.monetization_on),
          title: const Text("Financeiro"),
          onTap: () {
            debugPrint(' drawer');
          },
        ),
        ListTile(
          leading: const Icon(Icons.table_chart),
          title: const Text("Estatísticas"),
          onTap: () {
            debugPrint(' drawer');
          },
        ),
        ListTile(
          leading: const Icon(Icons.cases),
          title: const Text("Candidaturas"),
          onTap: () {
            debugPrint(' drawer');
          },
        ),
        ListTile(
          leading: const Icon(Icons.verified),
          title: const Text("Check-ins"),
          onTap: () {
            debugPrint(' drawer');
          },
        ),
        ListTile(
          leading: const Icon(Icons.question_mark),
          title: const Text("Tutorial"),
          onTap: () {
            debugPrint(' drawer');
          },
        ),
        ListTile(
          leading: const Icon(Icons.checklist_rounded),
          title: const Text("Termos de Uso"),
          onTap: () {
            debugPrint(' drawer');
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("Configurações"),
          onTap: () {
            debugPrint(' drawer');
          },
        )
      ])),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _opcaoselecionada = 0,
          fixedColor: Colors.black,
          backgroundColor: Colors.blue.shade900,
          unselectedItemColor: Colors.black,
          onTap: (opcao) {
            ('Clicou $opcao');
            setState(() {
              _opcaoselecionada = opcao;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: ('Minha agenda')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: ('Busca Plantões')),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet), label: ('Buscar Vagas')),
          ]),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Colors.black87,
        title: const Text('DOX'),
        leading:
            IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
      ),
    ));
  }
}
