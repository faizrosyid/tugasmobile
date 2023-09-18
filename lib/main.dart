import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    FocusNode myfocusnode = new FocusNode();
    FocusNode myfocusnode2 = new FocusNode();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sisfo App',
      home: Scaffold(
        backgroundColor: Colors.grey[150],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("Himasisfo.png", height: 100),
              SizedBox(height: 10),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange[300],
                  fontFamily: 'RabbidHighwaySignII',
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white, // Ganti warna sesuai kebutuhan
                  boxShadow: [
                  BoxShadow(
                  color: Colors.grey, // Warna bayangan
                  offset: Offset(0, 3), // Geser bayangan horizontal dan vertikal
                  blurRadius: 6.0, // Radius blur bayangan
                  spreadRadius: 2.0, // Menyebarkan bayangan
                  ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: TextFormField(
                        focusNode: myfocusnode,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(fontFamily: 'RabbidHighwaySignII'),
                          floatingLabelStyle: TextStyle(color: Colors.orange),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.orange, width: 1),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: TextFormField(
                        obscureText: true,
                        focusNode: myfocusnode2,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontFamily: 'RabbidHighwaySignII'),
                          floatingLabelStyle: TextStyle(color: Colors.orange),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.orange, width: 1),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange[
                        300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0), // Ubah nilai sesuai kebutuhan
                        ),
                      ),
                      child: Text('Masuk',
                      style: TextStyle(fontFamily: 'RabbidHighwaySignII'),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}