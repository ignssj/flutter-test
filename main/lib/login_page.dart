import 'package:flutter/material.dart';
import 'package:main/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String email = '';
  String pswd = '';

  Widget _body() {
    return ListView(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png'),
                Container(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    autofocus: true,
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: 'E-mail',
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (text) {
                      pswd = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password', border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          print('$email');
                          if (email == 'wnk' && pswd == '123') {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          } else {
                            print("Failed...");
                          }
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey[350],
                            onPrimary: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Exit"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey[350],
                            onPrimary: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/background.jpeg',
                fit: BoxFit.cover)),
        Container(
          color: Colors.black.withOpacity(0.15),
        ),
        _body(),
      ]),
    );
  }
}
