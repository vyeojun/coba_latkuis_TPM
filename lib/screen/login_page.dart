import 'package:flutter/material.dart';
import 'package:latkuis_229/screen/home_page.dart';
import 'order_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isLogin = false;

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == "admin" && password == "admin123") {
      setState(() {
        isLogin = true;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Login berhasil")));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(username: username),
          ),
        );
      });
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login gagal")));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE9E9ED),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// TITLE
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "Login untuk mengakses lebih banyak fitur",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              _usernameField(_usernameController),

              const SizedBox(height: 2),

              _passwordField(_passwordController),
              
              const SizedBox(height: 8),

              /// LOGIN BUTTON
              ElevatedButton(
                onPressed: _login, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                child: Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _usernameField(TextEditingController controller) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: TextField(
      controller: controller,
      enabled: true,
      decoration: InputDecoration(
        hintText: "Username",
        contentPadding: EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
    ),
  );
}

Widget _passwordField(TextEditingController controller) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: TextField(
      controller: controller,
      enabled: true,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        contentPadding: EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
    ),
  );
}