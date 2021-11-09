import 'package:flutter/material.dart';

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
        title: Text("Titulo", style: TextStyle(color: Colors.red)),
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
        child: GestureDetector(
          child: Text('Toques: $count', style: TextStyle(fontSize: 30)),
          onTap: () {
            setState(() {
              count++;
            });
          },
        ),
      ),
    );
  }
}
