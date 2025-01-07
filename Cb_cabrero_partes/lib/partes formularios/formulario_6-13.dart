import 'package:flutter_application_2/partes/parte_6-13.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Formulario6_13 extends StatefulWidget {
  const Formulario6_13({Key? key}) : super(key: key);

  @override
  _Formulario6_13 createState() => _Formulario6_13();
}

class _Formulario6_13 extends State<Formulario6_13> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _unidad = TextEditingController();
  final TextEditingController _obtp = TextEditingController();
  final TextEditingController _obac = TextEditingController();
  TextEditingController fecha = TextEditingController();
  final TextEditingController _hrdespacho = TextEditingController();
  final TextEditingController _hr6_0 = TextEditingController();
  final TextEditingController _hr6_3 = TextEditingController();
  final TextEditingController _hr6_9 = TextEditingController();
  final TextEditingController _hr6_10 = TextEditingController();
  TextEditingController kmsalida = TextEditingController();
  TextEditingController kmllegada = TextEditingController();
  final TextEditingController _direccion = TextEditingController();
  final TextEditingController _comuna = TextEditingController();
  final TextEditingController _villapoblacion = TextEditingController();
  TextEditingController descpreliminar = TextEditingController();
  final TextEditingController _companiaba = TextEditingController();
  final TextEditingController _nombreba = TextEditingController();
  final TextEditingController _rutba = TextEditingController();
  final TextEditingController _constanciaba = TextEditingController();
  final TextEditingController _comisariaba = TextEditingController();
  final TextEditingController _detallesba = TextEditingController();
  final TextEditingController _rutb = TextEditingController();
  final TextEditingController _nombreb = TextEditingController();

  List<Map<String, String>> asistentes = [];

  List<Map<String, String>> baccidentado = [];
  String? opcioncompania;

  var maskrut = MaskTextInputFormatter(
    mask: '##.###.###-k',
    filter: {"#": RegExp(r'[0-9]'), "k": RegExp(r'[0-9kK]')},
    type: MaskAutoCompletionType.lazy,
  );
 void _editbaccidentado(int index) {
  final TextEditingController editcompaniaController =
      TextEditingController(text: baccidentado[index]['compania']);
  final TextEditingController editNombreController =
      TextEditingController(text: baccidentado[index]['nombre']);
  final TextEditingController editRutController =
      TextEditingController(text: baccidentado[index]['rut']);
  final TextEditingController editconstanciaController =
      TextEditingController(text: baccidentado[index]['constancia']);
  final TextEditingController editcomisariaController =
      TextEditingController(text: baccidentado[index]['comisaria']);
  final TextEditingController editdetallesController =
      TextEditingController(text: baccidentado[index]['detalles']);

  showDialog(
  context: context,
  builder: (context) {
    return AlertDialog(
      title: const Text('Editar bombero accidentado'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: editcompaniaController,
              decoration: const InputDecoration(hintText: "Compañia"),
              enableInteractiveSelection: false,
            ),
            TextFormField(
              controller: editNombreController,
              decoration: const InputDecoration(hintText: "Nombre"),
               enableInteractiveSelection: false,
            ),
            TextFormField(
              inputFormatters: [maskrut],
              controller: editRutController,
              decoration: const InputDecoration(hintText: "Rut"),
               enableInteractiveSelection: false,
            ),
            TextFormField(
              controller: editconstanciaController,
              decoration: const InputDecoration(hintText: "Constancia"),
               enableInteractiveSelection: false,
            ),
            TextFormField(
              controller: editcomisariaController,
              decoration: const InputDecoration(hintText: "Comisaría"),
               enableInteractiveSelection: false,
            ),
            TextFormField(
              controller: editdetallesController,
              decoration: const InputDecoration(hintText: "Detalles"),
               enableInteractiveSelection: false,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              baccidentado[index] = {
                'compania': editcompaniaController.text,
                'nombre': editNombreController.text,
                'rut': editRutController.text,
                'constancia': editconstanciaController.text,
                'comisaria': editcomisariaController.text,
                'detalles': editdetallesController.text,
              };
            });
            Navigator.of(context).pop();
          },
          child: const Text('Guardar'),
        ),
      ],
    );
  },
);

 }
   void _deletebaccidentado(int index) {
    setState(() {
      baccidentado.removeAt(index);
    });
  }
  void _editAsistente(int index) {
    final TextEditingController editNombreController =
        TextEditingController(text: asistentes[index]['nombre']);
    final TextEditingController editRutController =
        TextEditingController(text: asistentes[index]['rut']);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Editar Asistente'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: editNombreController,
                decoration: const InputDecoration(hintText: "Nombre"),
              ),
              TextFormField(
                inputFormatters: [maskrut],
                controller: editRutController,
                decoration: const InputDecoration(hintText: "RUT"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  asistentes[index] = {
                    'nombre': editNombreController.text,
                    'rut': editRutController.text,
                  };
                });
                Navigator.of(context).pop();
              },
              child: const Text('Guardar'),
            ),
          ],
        );
      },
    );
  }

  void _deleteAsistente(int index) {
    setState(() {
      asistentes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    var maskcia = MaskTextInputFormatter(
      mask: '#',
      filter: {"#": RegExp(r'[1-5]')},
      type: MaskAutoCompletionType.lazy,
    );
    var maskfecha = MaskTextInputFormatter(
      mask: '##-##-####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
    var maskrut = MaskTextInputFormatter(
      mask: '##.###.###-k',
      filter: {"#": RegExp(r'[0-9]'), "k": RegExp(r'[0-9kK]')},
      type: MaskAutoCompletionType.lazy,
    );
    var maskhora = MaskTextInputFormatter(
      mask: '##:##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
    final pdfGenerator = Parte_6_13();

    return Scaffold(
        appBar: AppBar(
          flexibleSpace: SafeArea(
            child: FlexibleSpaceBar(
              centerTitle: true,
              titlePadding: const EdgeInsets.only(
                  bottom: 1), 
              title: Image.asset(
                'images/cbcabrero.png',
                height:
                    100, 
                width: 200, 
              ),
            ),
          ),
        ),
         resizeToAvoidBottomInset: true,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 4, 206),
              Color(0xFF00004B),
            ]),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Partes 6-13',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight:
                            FontWeight.bold, 
                        color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Seleccione su compañía',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.bold, 
                      color: Colors.white, 
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 100),
                    child: DropdownButtonFormField<String>(
                      value: opcioncompania,
                      onChanged: (String? newValue) {
                        setState(() {
                          opcioncompania = newValue;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Por favor seleccione una compañia';
                        }
                        return null;
                      },
                      items: <String>[
                        'Primera',
                        'Segunda',
                        'Tercera',
                        'Cuarta',
                        'Quinta',
                        'Comandancia'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors
                          .white, 
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _unidad,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Unidad",
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors
                          .white, 
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _obtp,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Oficial o Voluntario que toma el parte",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors
                          .white, 
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _obac,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Oficial o Voluntario a cargo",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '1-. Datos Generales',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.bold, 
                      color: Colors.white, 
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, 
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            inputFormatters: [maskfecha],
                            controller: fecha,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Fecha",
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, 
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            inputFormatters: [maskhora],
                            controller: _hrdespacho,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Hr despacho",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, 
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            inputFormatters: [maskhora],
                            controller: _hr6_0,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Hr 6-0",
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, 
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            inputFormatters: [maskhora],
                            controller: _hr6_3,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Hr 6-3",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, 
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            inputFormatters: [maskhora],
                            controller: _hr6_9,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Hr 6-9",
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, 
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            inputFormatters: [maskhora],
                            controller: _hr6_10,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Hr 6-10",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, 
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            controller: kmsalida,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Km salida",
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, 
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            controller: kmllegada,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Km llegada",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('2-. Datos del lugar',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight:
                            FontWeight.bold, 
                        color: Colors.white,
                      )),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors
                          .white, 
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _comuna,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Comuna",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors
                          .white, 
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _direccion,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Dirección",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors
                          .white, 
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _villapoblacion,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Villa o población",
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors
                          .white, 
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      maxLines: null,
                      controller: descpreliminar, 
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Asunto",
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '3-.Bomberos Accidentados',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.bold, 
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
  ),
  padding: const EdgeInsets.symmetric(horizontal: 15),
  margin: const EdgeInsets.symmetric(horizontal: 15),
  child: Column(
    children: [
      TextFormField(inputFormatters: [maskcia],controller: _companiaba, decoration: const InputDecoration(hintText: "Compañia")),
      TextFormField(controller: _nombreba, decoration: const InputDecoration(hintText: "Nombre")),
      TextFormField(inputFormatters: [maskrut], controller: _rutba, decoration: const InputDecoration(hintText: "Rut")),
      TextFormField(controller: _constanciaba, decoration: const InputDecoration(hintText: "Constancia")),
      TextFormField(controller: _comisariaba, decoration: const InputDecoration(hintText: "Comisaría")),
      TextFormField(controller: _detallesba, decoration: const InputDecoration(hintText: "Detalles")),
      ElevatedButton(
        onPressed: () {
          if (_companiaba.text.isNotEmpty && _nombreba.text.isNotEmpty && _rutba.text.isNotEmpty &&
              _constanciaba.text.isNotEmpty && _comisariaba.text.isNotEmpty && _detallesba.text.isNotEmpty) {
            setState(() {
              baccidentado.add({
                'compania': _companiaba.text,
                'nombre': _nombreba.text,
                'rut': _rutba.text,
                'constancia': _constanciaba.text,
                'comisaria': _comisariaba.text,
                'detalles': _detallesba.text
              });
              _companiaba.clear();
              _nombreba.clear();
              _rutba.clear();
              _constanciaba.clear();
              _comisariaba.clear();
              _detallesba.clear();
            });
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Por favor, completa todos los campos.')),
            );
          }
        },
        child: const Text('Agregar bombero accidentado'),
      ),
    ],
  ),
),
                  
                 if (baccidentado.isNotEmpty)
  Padding(
    padding: const EdgeInsets.all(20),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          const Text('Bomberos accidentados'),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(), 
            itemCount: baccidentado.length,
            itemBuilder: (context, index) {
              final baccidentados = baccidentado[index];
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0), 
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade300)), 
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(baccidentados['compania']!),
                          Text(baccidentados['nombre']!),
                          Text(baccidentados['rut']!),
                          Text(baccidentados['constancia']!),
                          Text(baccidentados['comisaria']!),
                          Text(baccidentados['detalles']!),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () => _editbaccidentado(index),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _deletebaccidentado(index),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    ),
  ),
                  const SizedBox(height: 20),
                  const Text(
                    '4-. Asistencia',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nombreb,
                          decoration: const InputDecoration(
                            hintText: "Nombre",
                          ),
                        ),
                        TextFormField(
                          inputFormatters: [maskrut],
                          controller: _rutb,
                          decoration: const InputDecoration(
                            hintText: "Rut",
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_nombreb.text.isNotEmpty &&
                                _rutb.text.isNotEmpty) {
                              setState(() {
                                asistentes.add({
                                  'nombre': _nombreb.text,
                                  'rut': _rutb.text,
                                });
                                _nombreb.clear();
                                _rutb.clear();
                              });
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text(
                                    'Por favor, completa todos los campos.'),
                              ));
                            }
                          },
                          child: const Text('Agregar Asistente'),
                        ),
                      ],
                    ),
                  ),
                  
                  if (asistentes.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            const Text('Asistentes'),
                            ListView.builder(
                              shrinkWrap: true,
                              physics:
                                  const NeverScrollableScrollPhysics(), 
                              itemCount: asistentes.length,
                              itemBuilder: (context, index) {
                                final asistente = asistentes[index];
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          8.0), 
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey
                                                .shade300)), 
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(asistente['nombre']!),
                                            Text(asistente['rut']!),
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () => _editAsistente(index),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () =>
                                            _deleteAsistente(index),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        
                        pdfGenerator.createPDF_6_13(
                            fecha.text,
                            opcioncompania,
                            _hrdespacho.text,
                            _hr6_0.text,
                            _hr6_3.text,
                            _hr6_9.text,
                            _hr6_10.text,
                            kmsalida.text,
                            kmllegada.text,
                            _comuna.text,
                            _direccion.text,
                            _villapoblacion.text,
                            descpreliminar.text,
                            baccidentado,
                            asistentes,
                            _unidad.text,
                            _obtp.text,
                            _obac.text);
                      } else {
                        
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                                  'Por favor, complete todos los campos obligatorios')),
                        );
                      }
                    },
                    child: const Text('Enviar Datos'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
