import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mobx/mobx.dart';

part 'connectivity_check_store.g.dart';

class ConnectivityCheckStore = ConnectivityCheckStoreBase
    with _$ConnectivityCheckStore;

abstract class ConnectivityCheckStoreBase with Store {
  @observable
  ObservableStream<ConnectivityResult> connectivityStream =
      ObservableStream<ConnectivityResult>(
    Connectivity().onConnectivityChanged,
  );

  void dispose() {
    connectivityStream.close();
  }
}
