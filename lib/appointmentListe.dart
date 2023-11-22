import 'package:flutter/material.dart';

class AppointmentListe extends StatelessWidget {
  const AppointmentListe({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
        },
        child: const Text('Go back!'),
      ),
    ),
  );
  }
}