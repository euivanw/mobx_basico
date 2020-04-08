import 'package:mobx/mobx.dart';

part 'form_erros_store.g.dart';

class FormErrosStore = _FormErrosStoreBase with _$FormErrosStore;

abstract class _FormErrosStoreBase with Store {
  @observable
  String _nome;

  @observable
  String _email;

  @observable
  String _senha;

  @computed
  String get nome => _nome;

  @computed
  String get email => _email;

  @computed
  String get senha => _senha;

  @computed
  bool get temErros => _nome != null || _email != null || _senha != null;

  @action
  void setNome(String nome) => _nome = nome;

  @action
  void setEmail(String email) => _email = email;

  @action
  void setSenha(String senha) => _senha = senha;
}
