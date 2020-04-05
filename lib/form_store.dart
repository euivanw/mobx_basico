import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

import 'form_erros_store.dart';

part 'form_store.g.dart';

class FormStore = _FormStore with _$FormStore;

abstract class _FormStore with Store {
  final FormErrosStore erros = FormErrosStore();
  final List<ReactionDisposer> _disposers = [];

  @observable
  String _nome = '';

  @observable
  String _email = '';

  @observable
  String _senha = '';

  @action
  void setNome(String nome) => _nome = nome;

  @action
  void setEmail(String email) => _email = email;

  @action
  void setSenha(String senha) => _senha = senha;

  @observable
  ObservableFuture<bool> verificarUsuario = ObservableFuture.value(true);

  @computed
  bool get estaVerificandoNome => verificarUsuario.status == FutureStatus.pending;

  void configuraValidadores() {
    _disposers.addAll([
      reaction((_) => _nome, validaNome),
      reaction((_) => _email, validateEmail),
      reaction((_) => _senha, validaSenha),
    ]);
  }

  @action
  Future<void> validaNome(String nome) async {
    if (isNull(nome) || nome.isEmpty) {
      erros.setNome('Nome é obrigatório');
      return;
    }

    try {
      verificarUsuario = ObservableFuture(verificaNome(nome));

      erros.setNome(null);

      final isValid = await verificarUsuario;
      if (!isValid) {
        erros.setNome('Nome não pode ser igual a "admin"');
        return;
      }
    } on Object catch (_) {
      erros.setNome(null);
    }

    erros.setNome(null);
  }

  @action
  void validaSenha(String senha) {
    erros.setSenha(isNull(senha) || senha.isEmpty ? 'Senha é obrigatória' : null);
  }

  @action
  void validateEmail(String email) {
    erros.setEmail(isEmail(email) ? null : 'E-mail é inválido');
  }

  void dispose() {
    for (final disposer in _disposers) {
      disposer();
    }
  }

  void validarTudo() {
    validaSenha(_senha);
    validateEmail(_email);
    validaNome(_nome);
  }

  Future<bool> verificaNome(String nome) async {
    await Future.delayed(const Duration(seconds: 1));

    return nome != 'admin';
  }
}
