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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.network(
                      'https://uploads.spiritfanfiction.com/fanfics/historias/202105/luz-da-minha-escuridao-imagine-obanai-iguro-22348778-220520212148.jpg'),
                ),
                accountName: Text('Ignacio'),
                accountEmail: Text('wnk@gmail.com')),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Main Menu',
            style: TextStyle(
              color:
                  AppController.instance.darkFont ? Colors.black : Colors.white,
              fontSize: 25,
            )),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 40,
          ),
          FloatingActionButton(
            heroTag: null,
            child: Icon(Icons.restart_alt_rounded),
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
          SizedBox(
            width: 0,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Counter: $count"),
            CustomSwitch(),
          ],
        ),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDark,
      onChanged: (value) {
        AppController.instance.changeTheme();
        AppController.instance.changeCFont();
      },
    );
  }
}
