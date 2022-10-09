import 'dart:html';
import 'dart:js_util';
import '../abstract.dart';

class AnalyticsImplementation extends Analytics {
  @override
  void send() {
    window.console.log("I'm on the web!!!");
    window.gtag(
      data: 'Send data!',
      hitType: 'Event',
      eventCategory: 'Category',
      eventAction: 'Action',
      eventLabel: "Label",
    );
  }
}

extension WindowExt on Window {
  void gtag({
    required String data,
    required String hitType,
    required String eventCategory,
    required String eventAction,
    required String eventLabel,
    String? eventValue,
    bool? nonInteractive,
  }) {
    final Object window = this;
    return callMethod(window, "gtag", [
      data,
      hitType,
      eventCategory,
      eventAction,
      eventLabel,
      eventValue,
      nonInteractive,
    ]);
  }
}
