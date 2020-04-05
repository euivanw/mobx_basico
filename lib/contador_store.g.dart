// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContadorStore on _ContadorStoreBase, Store {
  final _$valorAtom = Atom(name: '_ContadorStoreBase.valor');

  @override
  int get valor {
    _$valorAtom.context.enforceReadPolicy(_$valorAtom);
    _$valorAtom.reportObserved();
    return super.valor;
  }

  @override
  set valor(int value) {
    _$valorAtom.context.conditionallyRunInAction(() {
      super.valor = value;
      _$valorAtom.reportChanged();
    }, _$valorAtom, name: '${_$valorAtom.name}_set');
  }

  final _$_ContadorStoreBaseActionController =
      ActionController(name: '_ContadorStoreBase');

  @override
  void incrementar() {
    final _$actionInfo = _$_ContadorStoreBaseActionController.startAction();
    try {
      return super.incrementar();
    } finally {
      _$_ContadorStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'valor: ${valor.toString()}';
    return '{$string}';
  }
}
