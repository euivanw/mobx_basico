// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormStore on _FormStore, Store {
  Computed<bool> _$estaVerificandoNomeComputed;

  @override
  bool get estaVerificandoNome => (_$estaVerificandoNomeComputed ??=
          Computed<bool>(() => super.estaVerificandoNome))
      .value;

  final _$_nomeAtom = Atom(name: '_FormStore._nome');

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

  final _$_emailAtom = Atom(name: '_FormStore._email');

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

  final _$_senhaAtom = Atom(name: '_FormStore._senha');

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

  final _$verificarUsuarioAtom = Atom(name: '_FormStore.verificarUsuario');

  @override
  ObservableFuture<bool> get verificarUsuario {
    _$verificarUsuarioAtom.context.enforceReadPolicy(_$verificarUsuarioAtom);
    _$verificarUsuarioAtom.reportObserved();
    return super.verificarUsuario;
  }

  @override
  set verificarUsuario(ObservableFuture<bool> value) {
    _$verificarUsuarioAtom.context.conditionallyRunInAction(() {
      super.verificarUsuario = value;
      _$verificarUsuarioAtom.reportChanged();
    }, _$verificarUsuarioAtom, name: '${_$verificarUsuarioAtom.name}_set');
  }

  final _$validaNomeAsyncAction = AsyncAction('validaNome');

  @override
  Future<void> validaNome(String nome) {
    return _$validaNomeAsyncAction.run(() => super.validaNome(nome));
  }

  final _$_FormStoreActionController = ActionController(name: '_FormStore');

  @override
  void setNome(String nome) {
    final _$actionInfo = _$_FormStoreActionController.startAction();
    try {
      return super.setNome(nome);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String email) {
    final _$actionInfo = _$_FormStoreActionController.startAction();
    try {
      return super.setEmail(email);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String senha) {
    final _$actionInfo = _$_FormStoreActionController.startAction();
    try {
      return super.setSenha(senha);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validaSenha(String senha) {
    final _$actionInfo = _$_FormStoreActionController.startAction();
    try {
      return super.validaSenha(senha);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String email) {
    final _$actionInfo = _$_FormStoreActionController.startAction();
    try {
      return super.validateEmail(email);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'verificarUsuario: ${verificarUsuario.toString()},estaVerificandoNome: ${estaVerificandoNome.toString()}';
    return '{$string}';
  }
}
