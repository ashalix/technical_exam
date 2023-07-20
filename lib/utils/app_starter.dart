import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:xtendly_tech_exam/xtendly_sample_app.dart';

startApp() {
  if (kIsWeb) {
    runApp(const XtendlySampleApp());
  }
}
