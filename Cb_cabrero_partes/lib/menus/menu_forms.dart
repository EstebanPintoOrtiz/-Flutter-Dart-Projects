import 'package:flutter_application_2/partes%20formularios/formulario_10-0.dart';
import 'package:flutter_application_2/partes%20formularios/formulario_10-1.dart';
import 'package:flutter_application_2/partes%20formularios/formulario_10-2.dart';
import 'package:flutter_application_2/partes%20formularios/formulario_10-3.dart';
import 'package:flutter_application_2/partes%20formularios/formulario_10-4.dart';
import 'package:flutter_application_2/partes%20formularios/formulario_10-5.dart';
import 'package:flutter_application_2/partes%20formularios/formulario_10-6.dart';
import 'package:flutter_application_2/partes%20formularios/formulario_10-7.dart';
import 'package:flutter_application_2/partes%20formularios/formulario_6-13.dart';
import 'package:flutter_application_2/partes%20formularios/formulario_6-14.dart';
import 'package:flutter_application_2/partes%20formularios/formulario_otra_clasificacion.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MenuForms extends StatelessWidget {
  const MenuForms({super.key});

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
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width, 
            padding: const EdgeInsets.only(top: 50), 
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Partes de Emergencia',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 15.0,
                    runSpacing: 15.0,
                    children: [
                      buildMenuButton(context, "Parte 6-13", Icons.edit, const Formulario6_13()),
                      buildMenuButton(context, "Parte 6-14", MdiIcons.fuel, const Formulario6_14()),
                      buildMenuButton(context, "Parte 10-0", Icons.home, const Formulario10_0()),
                      buildMenuButton(context, "Parte 10-1", Icons.directions_car, const Formulario10_1()),
                      buildMenuButton(context, "Parte 10-2", MdiIcons.pineTree, const Formulario10_2()),
                      buildMenuButton(context, "Parte 10-3", Icons.person, const Formulario10_3()),
                      buildMenuButton(context, "Parte 10-4", MdiIcons.carOff, const Formulario10_4()),
                      buildMenuButton(context, "Parte 10-5", MdiIcons.radioactive, const Formulario10_5()),
                      buildMenuButton(context, "Parte 10-6", MdiIcons.gasCylinder, const Formulario10_6()),
                      buildMenuButton(context, "Parte 10-7", Icons.flash_on, const Formulario10_7()),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 15.0,
                    runSpacing: 15.0,
                    children: [
                      buildMenuButton1(context, "Otra clasificación", Icons.edit, const FormularioOtraclasificacion()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildMenuButton(BuildContext context, String label, IconData icon, Widget? pageRoute) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.4,
    child: ElevatedButton(
      onPressed: pageRoute != null
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pageRoute),
              );
            }
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20),
          Text(label, style: const TextStyle(fontSize: 13))
        ],
      ),
    ),
  );
}

Widget buildMenuButton1(BuildContext context, String label, IconData icon, Widget? pageRoute) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.5,
    child: ElevatedButton(
      onPressed: pageRoute != null
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pageRoute),
              );
            }
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20),
          Text(label, style: const TextStyle(fontSize: 13))
        ],
      ),
    ),
  );
}
