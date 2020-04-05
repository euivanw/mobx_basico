import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'contador_store.dart';

class HomePage extends StatelessWidget {
  final store = ContadorStore();

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
                '${store.valor}',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: store.incrementar,
        tooltip: 'Incrementar',
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
