import 'package:flutter/material.dart';
import 'package:main/app_controller.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: AppController.instance.isDark
                ? Brightness.dark
                : Brightness.light,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
