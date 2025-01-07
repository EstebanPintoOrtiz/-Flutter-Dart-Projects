import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:punto_central/src/utils/validaciones.dart'; 

class FormregistroEstablecimiento extends StatefulWidget {
  const FormregistroEstablecimiento({super.key});

  @override
  State<FormregistroEstablecimiento> createState() => _FormregistroEstablecimientoState();
}

class _FormregistroEstablecimientoState extends State<FormregistroEstablecimiento> {
  final GlobalKey<FormState> _formularioestado = GlobalKey<FormState>();
  TextEditingController nombre = TextEditingController();
  TextEditingController correo = TextEditingController();
  TextEditingController info = TextEditingController();
  final firebase = FirebaseFirestore.instance;

  registroUsuario() async {
    try {
      if (_formularioestado.currentState!.validate()) {
        await firebase.collection('Establecimientos').doc().set({
        'Nombre establecimiento': nombre.text,
        'Correo contacto': correo.text,
        'Información': info.text
      });
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('PUNTO CENTRAL'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text('Solicitud enviada exitosamente'),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          },
        );
      } else {
        print('Error: Verifica los campos');
      }
    } catch (e) {
      print('ERROR...' + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formularioestado,
        child: Column(
          children: [
            Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: TextFormField(
                    controller: nombre,
                    validator: validarNombre,
                    decoration: const InputDecoration(
                        labelText: "Nombre del establecimiento",
                        hintText: "Nombre",
                        border: InputBorder.none),
                  )),
            Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: TextFormField(
                    controller: correo,
                    validator: validarCorreo,
                    decoration: const InputDecoration(
                        labelText: "Correo de contacto",
                        hintText: "Correo contacto",
                        border: InputBorder.none),
                  )),
            Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: TextFormField(
                    controller: info,
                    validator: validarInfo,
                    decoration: const InputDecoration(
                        labelText: "Informacion",
                        hintText: "Informacion",
                        border: InputBorder.none),
                  )),
            Divider(height: 10, color: Colors.transparent),
            SizedBox(
              width: 400.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  registroUsuario();
                  Navigator.pushNamed(context, "MainScreen");
                },
                child: Text(
                  'Registrarse',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'LTCushion',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
