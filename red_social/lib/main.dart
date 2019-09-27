import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitch',
      theme: ThemeData(
        textTheme: Typography.whiteCupertino,
        canvasColor: Color(0xFF1F1733),
        primarySwatch: Colors.deepPurple,
      ),
      home: Inicio(title: 'Twitch'),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/img/tlogo2.png'),
      ),
      body: ListTileTheme(
        textColor: Colors.deepPurpleAccent,
        child: ListView(
          children: <Widget>[
            Text('En vivo'),
            Card(
              child: ListTile(
                leading: Image.asset('assets/img/rl.jpg', width: 100),
                title: Text('Rocket League'),
                subtitle: Text('Rocket League Championship Series Season 5: Grand Finals. NRG Esports vs. Team Dignitas'),
                trailing: Icon(Icons.play_arrow),
                isThreeLine: false,
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/img/owl.jpg', width: 100),
                title: Text('Overwatch'),
                subtitle: Text('Overwatch League Stage 3 Playoffs (Finals): Shanghai Dragons vs. San Francisco Shock'),
                trailing: Icon(Icons.play_arrow),
                isThreeLine: false,
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/img/cls.jpg', width: 100),
                title: Text('TGH'),
                subtitle: Text('Celeste Any% Speedrun WR Attempt'),
                trailing: Icon(Icons.play_arrow),
                isThreeLine: false,
              ),
            ),
            Text('Recomendados'),
            Card(
              child: ListTile(
                leading: Image.asset('assets/img/moist.jpg', width: 100),
                title: Text('moistcr1tikal'),
                subtitle: Text('Anime Master'),
                trailing: Icon(Icons.play_arrow),
                isThreeLine: false,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.search),
      ),
      bottomNavigationBar: BottomNavigationBar(fixedColor: Colors.deepPurpleAccent,items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Inicio"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          title: Text("Suscripciones"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text("Explorar"),
        )
      ]),
    );
  }
}
