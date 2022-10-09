import '../abstract.dart';

class AnalyticsImplementation extends Analytics {
  @override
  void send() {
    print("I'm the default version!");
  }
}
