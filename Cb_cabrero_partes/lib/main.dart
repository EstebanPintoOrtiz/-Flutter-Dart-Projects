
import 'package:flutter_application_2/menus/menu_forms.dart';
import 'package:flutter_application_2/splach%20screen/splachscreen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cabrero',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 0, 0)),
        useMaterial3: true,
      ),
      initialRoute: "splash",
      routes: {
        "splash": (context) => const Splachscreen(),
        "home": (context) => MenuForms(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}