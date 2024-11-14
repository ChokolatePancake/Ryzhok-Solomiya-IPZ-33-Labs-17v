import 'package:flutter/material.dart';
import './reset_password_screen.dart';
import './sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
                width: 200,
              ),
            ),

            const Text('Email',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),

            const TextField(
                decoration: InputDecoration(
                    labelText: 'Write you email',
                    border: OutlineInputBorder())),
            const SizedBox(height: 18),

            const Text('Password',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const TextField(
                decoration: InputDecoration(
                    labelText: 'Write you password',
                    border: OutlineInputBorder())),
            const SizedBox(height: 18),

            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 36,
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen())),
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.blue,
                        shadowColor: Colors.transparent,
                        side: const BorderSide(
                            color: Colors.blue,
                            width: 1),
                      ),
                      child: const Text("Sign up"),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
              ],
            ),
            const SizedBox(height: 24.0),

            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              title: Text('Message'),
                              content: Text("Need to implement"),
                            );
                          },
                        )
                      },
                      child: const Text("Login"),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResetPasswordScreen()))
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.blue,
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text("Reset password"),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
              ],
            ),
            const SizedBox(height: 24.0),
          ],
        ),
      ),
    );
  }
}