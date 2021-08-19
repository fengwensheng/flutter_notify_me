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

class _HomeState extends State<Home> with WidgetsBindingObserver {
  bool isEnabled = false;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        FlutterNotifyMe.isEnabled().then((v) => setState(() => isEnabled = v));
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.detached:
        break;
      default:
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    FlutterNotifyMe.isEnabled().then((v) => setState(() => isEnabled = v));
  }

  @override
  Widget build(_) => Scaffold(
        body: Column(
          children: [
            Text(
              'isEnabled: $isEnabled',
            ),
            ElevatedButton(
              onPressed: () => FlutterNotifyMe.open(),
              child: Text('open'),
            ),
          ],
        ),
      );
}
