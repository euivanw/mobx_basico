// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_erros_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormErrosStore on _FormErrosStoreBase, Store {
  Computed<String> _$nomeComputed;

  @override
  String get nome =>
      (_$nomeComputed ??= Computed<String>(() => super.nome)).value;
  Computed<String> _$emailComputed;

  @override
  String get email =>
      (_$emailComputed ??= Computed<String>(() => super.email)).value;
  Computed<String> _$senhaComputed;

  @override
  String get senha =>
      (_$senhaComputed ??= Computed<String>(() => super.senha)).value;
  Computed<bool> _$temErrosComputed;

  @override
  bool get temErros =>
      (_$temErrosComputed ??= Computed<bool>(() => super.temErros)).value;

  final _$_nomeAtom = Atom(name: '_FormErrosStoreBase._nome');

  @override
  String get _nome {
    _$_nomeAtom.context.enforceReadPolicy(_$_nomeAtom);
    _$_nomeAtom.reportObserved();
    return super._nome;
  }

  @override
  set _nome(String value) {
    _$_nomeAtom.context.conditionallyRunInAction(() {
      super._nome = value;
      _$_nomeAtom.reportChanged();
    }, _$_nomeAtom, name: '${_$_nomeAtom.name}_set');
  }

  final _$_emailAtom = Atom(name: '_FormErrosStoreBase._email');

  @override
  String get _email {
    _$_emailAtom.context.enforceReadPolicy(_$_emailAtom);
    _$_emailAtom.reportObserved();
    return super._email;
  }

  @override
  set _email(String value) {
    _$_emailAtom.context.conditionallyRunInAction(() {
      super._email = value;
      _$_emailAtom.reportChanged();
    }, _$_emailAtom, name: '${_$_emailAtom.name}_set');
  }

  final _$_senhaAtom = Atom(name: '_FormErrosStoreBase._senha');

  @override
  String get _senha {
    _$_senhaAtom.context.enforceReadPolicy(_$_senhaAtom);
    _$_senhaAtom.reportObserved();
    return super._senha;
  }

  @override
  set _senha(String value) {
    _$_senhaAtom.context.conditionallyRunInAction(() {
      super._senha = value;
      _$_senhaAtom.reportChanged();
    }, _$_senhaAtom, name: '${_$_senhaAtom.name}_set');
  }

  final _$_FormErrosStoreBaseActionController =
      ActionController(name: '_FormErrosStoreBase');

  @override
  String setNome(String nome) {
    final _$actionInfo = _$_FormErrosStoreBaseActionController.startAction();
    try {
      return super.setNome(nome);
    } finally {
      _$_FormErrosStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String setEmail(String email) {
    final _$actionInfo = _$_FormErrosStoreBaseActionController.startAction();
    try {
      return super.setEmail(email);
    } finally {
      _$_FormErrosStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String setSenha(String senha) {
    final _$actionInfo = _$_FormErrosStoreBaseActionController.startAction();
    try {
      return super.setSenha(senha);
    } finally {
      _$_FormErrosStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'nome: ${nome.toString()},email: ${email.toString()},senha: ${senha.toString()},temErros: ${temErros.toString()}';
    return '{$string}';
  }
}
