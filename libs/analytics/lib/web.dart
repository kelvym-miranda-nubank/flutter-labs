// ignore_for_file: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:js/js_util.dart';

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

void send() {
  window.console.log('Sending data to window.dataLayer!');
  window.gtag(
    data: 'Send data!',
    hitType: 'Event',
    eventCategory: 'Category',
    eventAction: 'Action',
    eventLabel: "Label",
  );
}
