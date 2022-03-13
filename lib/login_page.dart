import 'package:flutter/material.dart';
import 'package:twitterclone/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
          title: const Text("Login Page"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const LogoImageAssets(),
              _usernameField(),
              _passwordField(),
              _loginButton(context),
              _forgotPassword(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
                color:
                    (isLoginSuccess) ? Colors.deepPurple.shade300 : Colors.red),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
                color:
                    (isLoginSuccess) ? Colors.deepPurple.shade300 : Colors.red),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      child: MaterialButton(
        color: Colors.deepPurple.shade300,
        onPressed: () {
          String text = "";
          if (username == "123" && password == "123") {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
            setState(() {
              text = "Login Success";
              isLoginSuccess = true;
            });
          } else {
            setState(() {
              text = "Login Failed";
              isLoginSuccess = false;
            });
          }
          print("isLoginSuccess : $isLoginSuccess");
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _forgotPassword() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Forgot Password",
          style: TextStyle(
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}

class LogoImageAssets extends StatelessWidget {
  const LogoImageAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('assets/images/sadcat.jpg');

    Image image = Image(image: assetImage, height: 100, width: 100);
    return Container(
      child: image,
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
    );
  }
}
