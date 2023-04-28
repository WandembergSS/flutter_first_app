import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String homeRoute = '/';
  static const String verdadeiroTelaRoute = '/tela_caso_verdadeiro';
  static const String falsoTelaRoute = '/tela_caso_falso';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tchubiruba",
      initialRoute: homeRoute,
      routes: {
        homeRoute: (context) => HomeScreen(),
        verdadeiroTelaRoute: (context) => VerdadeiroTela(),
        falsoTelaRoute: (context) => FalsoTela(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha primeira aplicação usando Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container( //Funcionou??
              margin: EdgeInsets.only(bottom: 10.0),
            ),
            Text(
              "Hoje, o ‘Eu não sei’, se tornou o ‘Eu ainda não sei’.",
              style: TextStyle(fontSize: 40.0, color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: ElevatedButton(
                child: const Text('Verdadeiro'),
                onPressed: () {
                  Navigator.pushNamed(context, MyApp.verdadeiroTelaRoute);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                child: const Text('Falso'),
                onPressed: () {
                  Navigator.pushNamed(context, MyApp.falsoTelaRoute);
                },
              ),
            ),
          ],
        )
      ),
    );
  }
}

class VerdadeiroTela extends StatelessWidget {
  const VerdadeiroTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Verdadeiro')),
      body: Center(
        child: Text(
          "Você pode descansar um pouco.",
          style: TextStyle(fontSize: 40.0, color: Colors.green),
        ),
      ),
    );
  }
}

class FalsoTela extends StatelessWidget {
  const FalsoTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Falso')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/riddler.jpg',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              "Volte aos estudos! Vocẽ vai voltar, certo?",
              style: TextStyle(fontSize: 40.0, color: Colors.red),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: ElevatedButton(
                  child: const Text('Verdadeiro'),
                  onPressed: () {
                    Navigator.pushNamed(context, MyApp.verdadeiroTelaRoute);
                  },
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: ElevatedButton(
                  child: const Text('Falso'),
                  onPressed: () {
                    Navigator.pushNamed(context, MyApp.verdadeiroTelaRoute);
                  },
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}







