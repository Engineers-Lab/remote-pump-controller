import 'package:flutter/material.dart';

enum AuthMode {
  signIn, // Index 0
  signUp, // Index 1
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(child: Icon(Icons.heat_pump_rounded, size: 72)),
            ),
            SizedBox(height: 24),
            Text(
              "Pump Controller Hub",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue[700],
              ),
            ),
            SizedBox(height: 24),
            // TODO : Implement the sign in and signUp fields with tabs
            TextButton(
              onPressed: () {},
              child: Text(
                "Proceed as Guest",
                style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
