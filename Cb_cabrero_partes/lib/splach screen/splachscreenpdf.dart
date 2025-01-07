import 'package:flutter_application_2/menus/menu_forms.dart';
import 'package:flutter/material.dart';

class Splachscreen2 extends StatefulWidget {
  const Splachscreen2({super.key});

  @override
  State<Splachscreen2> createState() => _Splachscreen2State();
}

class _Splachscreen2State extends State<Splachscreen2> {
  @override
  void initState() {
    super.initState();
    var d = const Duration(seconds: 5);
    Future.delayed(d,(){
      Navigator.pushAndRemoveUntil(context, 
      MaterialPageRoute(builder: (context) => MenuForms()),
      (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
        children: [
         Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 4, 206),
                  Color(0xFF00004B),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 200,  
              height: 200,  
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/cbcabrero.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min, 
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "C.b Cabrero",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10), 
                    Text(
                      "From Ignnitech",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'DESIGNER', 
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 100.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                strokeWidth: 10,
              ),
            ),
          ),
        ],
      ),
      );
  }
}