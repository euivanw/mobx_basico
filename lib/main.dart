import 'package:flutter/material.dart';
import 'package:mobx_basico/home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meetup MobX',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
