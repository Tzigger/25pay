import 'package:flutter/material.dart';
import 'package:newapp/pages/home_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191C23),
      body: Center(
          child: SizedBox(
        width: 100.0,
        height: 50.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFA031),
          ),
          child: const Text("Login",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  color: Colors.deepPurple)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeWidget()));
          },
        ),
      )),
    );
  }
}
