import '../abstract.dart';

class AnalyticsImplementation extends Analytics {
  @override
  void send() {
    // ignore: avoid_print
    print("I'm the default version!");
  }
}
