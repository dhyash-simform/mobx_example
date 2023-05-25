import 'dart:async';
import 'dart:math';

import 'package:mobx/mobx.dart';

part 'random_number_store.g.dart';

class RandomNumberStore = RandomNumberStoreBase with _$RandomNumberStore;

abstract class RandomNumberStoreBase with Store {
  // ObservableStream stream = StreamController().stream.asObservable();

  RandomNumberStoreBase() {
    _streamController = StreamController<int>();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _streamController.add(_random.nextInt(200));
    });

    randomStream = ObservableStream<int>(_streamController.stream);
  }

  late final Timer _timer;

  late final _random = Random();

  late final StreamController<int> _streamController;

  late final ObservableStream<int> randomStream;

  void dispose() async {
    _timer.cancel();
    await _streamController.close();
  }
}
