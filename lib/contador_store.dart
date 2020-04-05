import 'package:mobx/mobx.dart';

part 'contador_store.g.dart';

class ContadorStore = _ContadorStoreBase with _$ContadorStore;

abstract class _ContadorStoreBase with Store {
  @observable
  int valor = 0;

  @action
  void incrementar() {
    valor++;
  }
}
