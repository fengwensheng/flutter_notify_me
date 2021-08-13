import 'package:flutter/material.dart';
import 'package:flutter_notify_me/flutter_notify_me.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(_) => MaterialApp(home: Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(_) => Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () => FlutterNotifyMe.open(),
            child: Text('open'),
          ),
        ),
      );
}
