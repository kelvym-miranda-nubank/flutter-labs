library analytics;

export './platforms/stub.dart' // Stub implementation
    if (dart.library.io) './platforms/common.dart' // dart:io implementation
    if (dart.library.html) './platforms/web.dart'; // dart:html implementation
