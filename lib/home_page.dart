import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'form_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FormStore store = FormStore();

  @override
  void initState() {
    super.initState();
    store.configuraValidadores();
  }

  @override
  void dispose() {
    super.dispose();
    store.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Formulário Reativo'),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Observer(
                    builder: (_) => TextField(
                      onChanged: store.setNome,
                      decoration: InputDecoration(
                        labelText: 'Nome de usuário',
                        hintText: 'Informe o seu nome de usuário',
                        errorText: store.erros.nome,
                      ),
                    ),
                  ),
                  Observer(
                    builder: (_) => AnimatedOpacity(
                      child: LinearProgressIndicator(),
                      duration: Duration(milliseconds: 300),
                      opacity: store.estaVerificandoNome ? 1 : 0,
                    ),
                  ),
                  Observer(
                    builder: (_) => TextField(
                      onChanged: store.setEmail,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'Informe o seu e-mail',
                        errorText: store.erros.email,
                      ),
                    ),
                  ),
                  Observer(
                    builder: (_) => TextField(
                      onChanged: store.setSenha,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        hintText: 'Informe a sua senha',
                        errorText: store.erros.senha,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  RaisedButton(
                    child: Text(
                      'Validar',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: store.validarTudo,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
