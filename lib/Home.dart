import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_flutter/appointmentListe.dart';
import 'package:http/http.dart' as http;

class Home extends StatelessWidget {
  const Home({super.key});


  // Fonction pour effectuer la requête HTTP
  Future<String> fetchData() async {
    final response = await http.get(Uri.parse('http://10.0.2.2:8080/greeting'));

    if (response.statusCode == 200) {
      // Si la requête réussit, renvoie les données
      Map<String, dynamic> data = jsonDecode(response.body);
      return data.toString();
    } else {
      // En cas d'erreur, lance une exception
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () async {
            String apiResponse = await fetchData();
            print(apiResponse);

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AppointmentListe()),
            );
          },
        ),
      ),
    );
  }
}
