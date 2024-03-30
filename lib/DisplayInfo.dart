import 'package:flutter/material.dart';
import 'login.dart';

class DisplayInfo extends StatelessWidget {
  final String email;
  final String password;

  const DisplayInfo({
    Key? key,
    required this.email,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email: $email'),
            const SizedBox(height: 16.0),
            Text('Password: $password'),
            const SizedBox(height: 16.0),
            // Add more information if needed
          ],
        ),
      ),
    );
  }
}
