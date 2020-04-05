import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_basico/conexao_store.dart';

class HomePage extends StatefulWidget {
  final ConexaoStore store;

  const HomePage(this.store, {Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ReactionDisposer _disposer;

  @override
  void initState() {
    super.initState();
    _disposer = reaction(
      (_) => widget.store.conexaoStream.value,
      (estado) => (widget.store.setEstado(//
          estado == ConnectivityResult.none //
              ? 'Desconectada' //
              : 'Conectada')),
    );
  }

  @override
  void dispose() {
    _disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Construindo interface');

    return Scaffold(
      appBar: AppBar(
        title: Text('MobX Reações'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Sua conexão está:'),
            Observer(
              builder: (_) => Text(widget.store.estado),
            ),
          ],
        ),
      ),
    );
  }
}
