// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conexao_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConexaoStore on _ConexaoStoreBase, Store {
  Computed<String> _$estadoComputed;

  @override
  String get estado =>
      (_$estadoComputed ??= Computed<String>(() => super.estado)).value;

  final _$conexaoStreamAtom = Atom(name: '_ConexaoStoreBase.conexaoStream');

  @override
  ObservableStream<ConnectivityResult> get conexaoStream {
    _$conexaoStreamAtom.context.enforceReadPolicy(_$conexaoStreamAtom);
    _$conexaoStreamAtom.reportObserved();
    return super.conexaoStream;
  }

  @override
  set conexaoStream(ObservableStream<ConnectivityResult> value) {
    _$conexaoStreamAtom.context.conditionallyRunInAction(() {
      super.conexaoStream = value;
      _$conexaoStreamAtom.reportChanged();
    }, _$conexaoStreamAtom, name: '${_$conexaoStreamAtom.name}_set');
  }

  final _$_estadoAtom = Atom(name: '_ConexaoStoreBase._estado');

  @override
  String get _estado {
    _$_estadoAtom.context.enforceReadPolicy(_$_estadoAtom);
    _$_estadoAtom.reportObserved();
    return super._estado;
  }

  @override
  set _estado(String value) {
    _$_estadoAtom.context.conditionallyRunInAction(() {
      super._estado = value;
      _$_estadoAtom.reportChanged();
    }, _$_estadoAtom, name: '${_$_estadoAtom.name}_set');
  }

  final _$_ConexaoStoreBaseActionController =
      ActionController(name: '_ConexaoStoreBase');

  @override
  void setEstado(String estado) {
    final _$actionInfo = _$_ConexaoStoreBaseActionController.startAction();
    try {
      return super.setEstado(estado);
    } finally {
      _$_ConexaoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'conexaoStream: ${conexaoStream.toString()},estado: ${estado.toString()}';
    return '{$string}';
  }
}
