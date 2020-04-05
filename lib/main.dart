import 'package:flutter/material.dart';
import 'package:mobx_basico/conexao_store.dart';
import 'package:mobx_basico/home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final store = ConexaoStore();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meetup MobX',
      debugShowCheckedModeBanner: false,
      home: HomePage(store),
    );
  }
}
