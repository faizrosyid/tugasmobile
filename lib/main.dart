import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sisfo App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoginFailed = false;

  // Username dan password yang benar
  final String correctUsername = "user";
  final String correctPassword = "123";


  @override
  Widget build(BuildContext context) {
    FocusNode myfocusnode = new FocusNode();
    FocusNode myfocusnode2 = new FocusNode();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 8),
              Icon(
                Icons.person_2_rounded,
                size: 50,
                color: Colors.green[300],
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green[300],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: TextFormField(
                        focusNode: myfocusnode,
                        controller: usernameController,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          floatingLabelStyle: TextStyle(color: Colors.green),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.green, width: 1),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: TextFormField(
                        obscureText: true,
                        focusNode: myfocusnode2,
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          floatingLabelStyle: TextStyle(color: Colors.green),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.green, width: 1),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[
                        300], // Atur warna latar belakang tombol menjadi hijau
                      ),
                      child: Text('Masuk'),
                    ),
                    if (isLoginFailed)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Username atau password salah!',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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