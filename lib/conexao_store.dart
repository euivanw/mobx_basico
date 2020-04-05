import 'package:connectivity/connectivity.dart';
import 'package:mobx/mobx.dart';

part 'conexao_store.g.dart';

class ConexaoStore = _ConexaoStoreBase with _$ConexaoStore;

abstract class _ConexaoStoreBase with Store {
  _ConexaoStoreBase() {
    conexaoStream = ObservableStream(Connectivity().onConnectivityChanged);
  }

  @observable
  ObservableStream<ConnectivityResult> conexaoStream;

  @observable
  String _estado = '';

  @computed
  String get estado => _estado.toUpperCase();

  @action
  void setEstado(String estado) => _estado = estado;
}
