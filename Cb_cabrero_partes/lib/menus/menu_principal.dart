import 'package:flutter/material.dart';
class Menuprincipal extends StatefulWidget {
  const Menuprincipal({super.key});

  @override
  State<Menuprincipal> createState() => _MenuprincipalState();
}

class _MenuprincipalState extends State<Menuprincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        flexibleSpace: SafeArea(
          child: FlexibleSpaceBar(
            centerTitle: true,
            titlePadding: const EdgeInsets.only(bottom: 1),
            title: Image.asset(
              'images/cbcabrero.png',
              height: 100,
              width: 200,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 4, 206),
              Color(0xFF00004B),
            ],
          ),
        ),
      )
    );
  }
}