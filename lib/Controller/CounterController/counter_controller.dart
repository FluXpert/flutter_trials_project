import '../../Exporter/exporter.dart';

class CounterController extends GetxController {
  final _counter = 0.obs;
  get counter => _counter;
  incrementCounter() => _counter.value++;
  decrementCounter() => _counter.value--;
}
