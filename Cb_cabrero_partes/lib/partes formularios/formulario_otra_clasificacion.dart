import 'package:flutter_application_2/partes/parte_otra_clasificacion.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormularioOtraclasificacion extends StatefulWidget {
  const FormularioOtraclasificacion({Key? key}) : super(key: key);

  @override
  _FormularioOtraclasificacion createState() => _FormularioOtraclasificacion();
}

class _FormularioOtraclasificacion extends State<FormularioOtraclasificacion> {
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
  final TextEditingController _rutafectado = TextEditingController();
  final TextEditingController _nombreafectado = TextEditingController();
  final TextEditingController _apellidoafectado = TextEditingController();
  final TextEditingController _telefonoafectado = TextEditingController();
  TextEditingController descpreliminar = TextEditingController();
  final TextEditingController _ounidad = TextEditingController();
  final TextEditingController _omaquinista = TextEditingController();
  final TextEditingController _oobac = TextEditingController();
  final TextEditingController _opersonal = TextEditingController();
  final TextEditingController _companiaba = TextEditingController();
  final TextEditingController _nombreba = TextEditingController();
  final TextEditingController _rutba = TextEditingController();
  final TextEditingController _constanciaba = TextEditingController();
  final TextEditingController _comisariaba = TextEditingController();
  final TextEditingController _detallesba = TextEditingController();
  final TextEditingController _sservicio = TextEditingController();
  final TextEditingController _spatente = TextEditingController();
  final TextEditingController _sacargo = TextEditingController();
  final TextEditingController _spersonal = TextEditingController();
  final TextEditingController _sobservaciones = TextEditingController();
  final TextEditingController _rutb = TextEditingController();
  final TextEditingController _nombreb = TextEditingController();
  String? eocupante;

  List<Map<String, String>> asistentes = [];
  List<Map<String, String>> servicios = [];
  List<Map<String, String>> otroocupante = [];
  List<Map<String, String>> materialmayor = [];
  List<Map<String, String>> baccidentado = [];
  String? opcioncompania;
  String? opcionclasificacion;

  final _controllers6 = {
    'Nombre': TextEditingController(),
    'Rut': TextEditingController(),
    'Edad': TextEditingController(),
    'Estado': TextEditingController(),
  };
  var maskrut = MaskTextInputFormatter(
    mask: '##.###.###-k',
    filter: {"#": RegExp(r'[0-9]'), "k": RegExp(r'[0-9kK]')},
    type: MaskAutoCompletionType.lazy,
  );
  void _editmaterialmayor(int index) {
    final TextEditingController editUnidad =
        TextEditingController(text: materialmayor[index]['Unidad']);
    final TextEditingController editMaquinista =
        TextEditingController(text: materialmayor[index]['Maquinista']);
    final TextEditingController editObac =
        TextEditingController(text: materialmayor[index]['Obac']);
    final TextEditingController editPersonal =
        TextEditingController(text: materialmayor[index]['Nro de personal']);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Editar material mayor'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: editUnidad,
                decoration: const InputDecoration(hintText: "Unidad"),
              ),
              TextFormField(
                controller: editMaquinista,
                decoration: const InputDecoration(hintText: "Maquinista"),
              ),
              TextFormField(
                controller: editObac,
                decoration: const InputDecoration(hintText: "Obac"),
              ),
              TextFormField(
                controller: editPersonal,
                decoration: const InputDecoration(hintText: "Nro de personal"),
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
                  materialmayor[index] = {
                    'Unidad': editUnidad.text,
                    'Maquinista': editMaquinista.text,
                    'Obac': editObac.text,
                    'Nro de personal': editPersonal.text,
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

  void _deletematerialmayor(int index) {
    setState(() {
      materialmayor.removeAt(index);
    });
  }

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

  var maskcia = MaskTextInputFormatter(
    mask: '#',
    filter: {"#": RegExp(r'[1-5]')},
    type: MaskAutoCompletionType.lazy,
  );
  void _editServicios(int index) {
    final TextEditingController editServicio =
        TextEditingController(text: servicios[index]['Servicios']);
    final TextEditingController editPatente =
        TextEditingController(text: servicios[index]['Unidad']);
    final TextEditingController editAcargo =
        TextEditingController(text: servicios[index]['A cargo']);
    final TextEditingController editPersonal =
        TextEditingController(text: servicios[index]['Nro de personal']);
    final TextEditingController editObservaciones =
        TextEditingController(text: servicios[index]['Observaciones']);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Editar servicios'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: editServicio,
                decoration: const InputDecoration(hintText: "Servicios"),
              ),
              TextFormField(
                controller: editPatente,
                decoration: const InputDecoration(hintText: "Unidad"),
              ),
              TextFormField(
                controller: editAcargo,
                decoration: const InputDecoration(hintText: "A cargo"),
              ),
              TextFormField(
                controller: editPersonal,
                decoration: const InputDecoration(hintText: "Nro de personal"),
              ),
              TextFormField(
                controller: editObservaciones,
                decoration: const InputDecoration(hintText: "Observaciones"),
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
                  servicios[index] = {
                    'Servicios': editServicio.text,
                    'Unidad': editPatente.text,
                    'A cargo': editAcargo.text,
                    'Nro de personal': editPersonal.text,
                    'Observaciones': editObservaciones.text,
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

  void _deleteServicios(int index) {
    setState(() {
      servicios.removeAt(index);
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
    var masktelefono = MaskTextInputFormatter(
      mask: '569 #### ####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );

    var maskhora = MaskTextInputFormatter(
      mask: '##:##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );

    final pdfGenerator = Otra_clasificacion();

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
                    'Otra clasificación',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight:
                            FontWeight.bold, 
                        color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Seleccione otra clasificación',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 100),
                    child: DropdownButtonFormField<String>(
                      value: opcionclasificacion,
                      onChanged: (String? newValue) {
                        setState(() {
                          opcionclasificacion = newValue;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Por favor seleccione una clasificacion';
                        }
                        return null;
                      },
                      items: <String>[
                        '10-8',
                        '10-9',
                        '10-10',
                        '10-11',
                        '10-12',
                        '10-13',
                        '10-14',
                        '10-15',
                        '10-16',
                        '10-17',
                        '10-18',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
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
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
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
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
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
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
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
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
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
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
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
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
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
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
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
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
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
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
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
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
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
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
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
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
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
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
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
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
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
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
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
                  const Text('3-. Datos del Afectado',
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
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      inputFormatters: [maskrut],
                      controller: _rutafectado,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Rut",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
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
                      controller: _nombreafectado,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Nombres",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
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
                      controller: _apellidoafectado,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Apellidos",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
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
                      inputFormatters: [masktelefono],
                      controller: _telefonoafectado,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Teléfono",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.0, 
                      0, 
                      MediaQuery.of(context).size.width * 0.0, 
                      0, 
                    ),
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
                      child: DropdownButtonFormField<String>(
                        value:
                            eocupante, 
                        onChanged: (newValue) {
                          setState(() {
                            eocupante =
                                newValue; 
                          });
                        },
                        items: const [
                          DropdownMenuItem(
                            value: "leve",
                            child: Text("Leve"),
                          ),
                          DropdownMenuItem(
                            value: "medio",
                            child: Text("Medio"),
                          ),
                          DropdownMenuItem(
                            value: "grave",
                            child: Text("Grave"),
                          ),
                        ],
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Estado",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
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
                      maxLines: null,
                      controller: descpreliminar, 
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Descripción preliminar",
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '4-. Otros afectados',
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
                      color: Colors
                          .white, 
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        for (var key in _controllers6.keys)
                          TextFormField(
                            controller: _controllers6[key],
                            decoration: InputDecoration(
                              hintText: key,
                            ),
                          ),
                        ElevatedButton(
                          onPressed: () {
                            
                            if (_controllers6.values.every((controllers6) =>
                                controllers6.text.isNotEmpty)) {
                              setState(() {
                                
                                otroocupante.add({
                                  for (var entry in _controllers6.entries)
                                    entry.key: entry.value.text,
                                });
                                
                                for (var _controllers6
                                    in _controllers6.values) {
                                  _controllers6.clear();
                                }
                              });
                            } else {
                              
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text(
                                    'Por favor, completa todos los campos.'),
                              ));
                            }
                          },
                          child: const Text('Agregar ocupante'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  
                  if (otroocupante.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15), 
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius:
                              BorderRadius.circular(5), 
                        ),
                        child: Column(
                          children: [
                            const Text('Otro ocupante afectado'),
                            IgnorePointer(
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: otroocupante.length,
                                itemBuilder: (context, index) {
                                  var otroocupantes = otroocupante[index];
                                  return ListTile(
                                    title: Text(otroocupantes['Nombre']!),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        for (var entry in otroocupantes.entries)
                                          if (entry.key != 'Nombre')
                                            Text(
                                                '${entry.key}: ${entry.value}'),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(height: 10),
                  const Text('5-. Otro material mayor',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight:
                            FontWeight.bold, 
                        color: Colors.white,
                      )),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _ounidad,
                          decoration: const InputDecoration(
                            hintText: "Unidad",
                          ),
                        ),
                        TextFormField(
                          controller: _omaquinista,
                          decoration: const InputDecoration(
                            hintText: "Maquinista",
                          ),
                        ),
                        TextFormField(
                          controller: _oobac,
                          decoration: const InputDecoration(
                            hintText: "Obac",
                          ),
                        ),
                        TextFormField(
                          controller: _opersonal,
                          decoration: const InputDecoration(
                            hintText: "Nro de personal",
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_ounidad.text.isNotEmpty &&
                                _omaquinista.text.isNotEmpty &&
                                _oobac.text.isNotEmpty &&
                                _opersonal.text.isNotEmpty) {
                              setState(() {
                                materialmayor.add({
                                  'Unidad': _ounidad.text,
                                  'Maquinista': _omaquinista.text,
                                  'Obac': _oobac.text,
                                  'Nro de personal': _opersonal.text,
                                });
                                _ounidad.clear();
                                _omaquinista.clear();
                                _oobac.clear();
                                _opersonal.clear();
                              });
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text(
                                    'Por favor, completa todos los campos.'),
                              ));
                            }
                          },
                          child: const Text('Agregar material mayor'),
                        ),
                      ],
                    ),
                  ),

                  if (materialmayor.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            const Text('Otro material mayor'),
                            ListView.builder(
                              shrinkWrap: true,
                              physics:
                                  const NeverScrollableScrollPhysics(), 
                              itemCount: materialmayor.length,
                              itemBuilder: (context, index) {
                                final materialmayors = materialmayor[index];
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
                                            Text(materialmayors['Unidad']!),
                                            Text(materialmayors['Maquinista']!),
                                            Text(materialmayors['Obac']!),
                                            Text(materialmayors[
                                                'Nro de personal']!),
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () =>
                                            _editmaterialmayor(index),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () =>
                                            _deletematerialmayor(index),
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
                    '6-.Bomberos Accidentados:',
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
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        TextFormField(
                            inputFormatters: [maskcia],
                            controller: _companiaba,
                            decoration:
                                const InputDecoration(hintText: "Compañia")),
                        TextFormField(
                            controller: _nombreba,
                            decoration:
                                const InputDecoration(hintText: "Nombre")),
                        TextFormField(
                            inputFormatters: [maskrut],
                            controller: _rutba,
                            decoration: const InputDecoration(hintText: "Rut")),
                        TextFormField(
                            controller: _constanciaba,
                            decoration:
                                const InputDecoration(hintText: "Constancia")),
                        TextFormField(
                            controller: _comisariaba,
                            decoration:
                                const InputDecoration(hintText: "Comisaría")),
                        TextFormField(
                            controller: _detallesba,
                            decoration:
                                const InputDecoration(hintText: "Detalles")),
                        ElevatedButton(
                          onPressed: () {
                            if (_companiaba.text.isNotEmpty &&
                                _nombreba.text.isNotEmpty &&
                                _rutba.text.isNotEmpty &&
                                _constanciaba.text.isNotEmpty &&
                                _comisariaba.text.isNotEmpty &&
                                _detallesba.text.isNotEmpty) {
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
                                const SnackBar(
                                    content: Text(
                                        'Por favor, completa todos los campos.')),
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
                              physics:
                                  const NeverScrollableScrollPhysics(), 
                              itemCount: baccidentado.length,
                              itemBuilder: (context, index) {
                                final baccidentados = baccidentado[index];
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
                                        onPressed: () =>
                                            _editbaccidentado(index),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () =>
                                            _deletebaccidentado(index),
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
                  const Text('7-. Otros servicios de emergencia en el lugar',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight:
                            FontWeight.bold, 
                        color: Colors.white,
                      )),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _sservicio,
                          decoration: const InputDecoration(
                            hintText: "Servicios",
                          ),
                        ),
                        TextFormField(
                          controller: _spatente,
                          decoration: const InputDecoration(
                            hintText: "Unidad",
                          ),
                        ),
                        TextFormField(
                          controller: _sacargo,
                          decoration: const InputDecoration(
                            hintText: "A cargo",
                          ),
                        ),
                        TextFormField(
                          controller: _spersonal,
                          decoration: const InputDecoration(
                            hintText: "Nro de personal",
                          ),
                        ),
                        TextFormField(
                          controller: _sobservaciones,
                          decoration: const InputDecoration(
                            hintText: "Observaciones",
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_sservicio.text.isNotEmpty &&
                                _spatente.text.isNotEmpty &&
                                _sacargo.text.isNotEmpty &&
                                _spersonal.text.isNotEmpty &&
                                _sobservaciones.text.isNotEmpty) {
                              setState(() {
                                servicios.add({
                                  'Servicios': _sservicio.text,
                                  'Unidad': _spatente.text,
                                  'A cargo': _sacargo.text,
                                  'Nro de personal': _spersonal.text,
                                  'Observaciones': _sobservaciones.text,
                                });
                                _sservicio.clear();
                                _spatente.clear();
                                _sacargo.clear();
                                _spersonal.clear();
                                _sobservaciones.clear();
                              });
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text(
                                    'Por favor, completa todos los campos.'),
                              ));
                            }
                          },
                          child: const Text('Agregar otro servicio'),
                        ),
                      ],
                    ),
                  ),

                  if (servicios.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            const Text('Otro servicios'),
                            ListView.builder(
                              shrinkWrap: true,
                              physics:
                                  const NeverScrollableScrollPhysics(), 
                              itemCount: servicios.length,
                              itemBuilder: (context, index) {
                                final servicio = servicios[index];
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
                                            Text(servicio['Servicios']!),
                                            Text(servicio['Unidad']!),
                                            Text(servicio['A cargo']!),
                                            Text(servicio['Nro de personal']!),
                                            Text(servicio['Observaciones']!),
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () => _editServicios(index),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () =>
                                            _deleteServicios(index),
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
                  const Text('8-. Asistencia',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight:
                            FontWeight.bold, 
                        color: Colors.white,
                      )),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
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
                            hintText: "RUT",
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
                        
                        pdfGenerator.createPDF_Otra_clasificacion(
                            fecha.text,
                            opcionclasificacion,
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
                            _rutafectado.text,
                            _nombreafectado.text,
                            _apellidoafectado.text,
                            _telefonoafectado.text,
                            eocupante,
                            descpreliminar.text,
                            otroocupante,
                            materialmayor,
                            baccidentado,
                            servicios,
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
