import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart' as mobx;

class HomePage extends StatelessWidget {
  mobx.Observable<int> contador = mobx.Observable(0);
  mobx.Action _incrementarContador;

  HomePage() {
    _incrementarContador = mobx.Action(_incrementar);
  }

  void _incrementar() {
    contador.value++;
  }

  @override
  Widget build(BuildContext context) {
    print('Construindo interface');

    return Scaffold(
      appBar: AppBar(title: Text('MobX Básico')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('O botão foi pressionado:'),
            Observer(
              builder: (_) => Text(
                '${contador.value}',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementarContador,
        tooltip: 'Incrementar',
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
