import 'dart:async';
import 'dart:math';

import 'package:mobx/mobx.dart';

part 'random_number_store.g.dart';

class RandomNumberStore = RandomNumberBase with _$RandomNumberStore;

abstract class RandomNumberBase with Store {
  // ObservableStream stream = StreamController().stream.asObservable();

  RandomNumberBase() {
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
