import 'package:flutter/material.dart';

class RegistrationSuccess extends StatelessWidget {
  const RegistrationSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Success'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Registration successful!'),
          ],
        ),
      ),
    );
  }
}
