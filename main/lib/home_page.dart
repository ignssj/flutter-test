import 'package:flutter/material.dart';
import 'package:main/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  int count = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Modifier',
            style: TextStyle(
                color: Colors.black, fontSize: 25, debugLabel: 'hey')),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
      body: Center(
        child: Switch(
            value: AppController.instance.isDark,
            onChanged: (value) {
              AppController.instance.changeTheme();
            }),
      ),
    );
  }
}
