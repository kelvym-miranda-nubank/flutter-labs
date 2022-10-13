import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as f;

class Text extends f.StatelessWidget {
  final String data;
  final f.TextStyle? style;
  final bool? selectableText;

  const Text(
    this.data, {
    super.key,
    this.style,
    this.selectableText,
  });

  @override
  f.Widget build(f.BuildContext context) {
    // ignore: avoid_print
    print("Oi eu sou um textinho, vamos textar!");

    if (kIsWeb && selectableText == null) {
      return f.SelectableText(
        data,
        style: style,
      );
    }

    if (selectableText == true) {
      return f.SelectableText(
        data,
        style: style,
      );
    }

    return f.Text(
      data,
      style: style,
    );
  }
}
