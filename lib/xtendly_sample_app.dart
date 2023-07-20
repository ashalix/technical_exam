import 'package:flutter/material.dart';
import 'package:xtendly_tech_exam/utils/theme.dart';

import 'features/homepage.dart';

class XtendlySampleApp extends StatelessWidget {
  const XtendlySampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: lightTheme,
        home: const Homepage(),
      );
}
