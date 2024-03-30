// registration_screen.dart
import 'package:flutter/material.dart';
import 'displayInfo.dart';
import 'login.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Validate the input
                if (_emailController.text.isEmpty ||
                    _passwordController.text.isEmpty) {
                  // Display an error message
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter a valid email and password'),
                    ),
                  );
                  return;
                }

                // Perform the registration logic
                // For simplicity, this example just navigates to the DisplayInfo screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayInfo(
                      email: _emailController.text,
                      password: _passwordController.text,
                    ),
                  ),
                );
              },
              child: const Text('Register'),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navigate back to the login screen
                Navigator.pop(context);
              },
              child: const Text('Back to Login'),
            ),
          ],
        ),
      ),
    );
  }
}
