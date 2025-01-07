import 'dart:typed_data';
import 'package:flutter/services.dart' show Rect, rootBundle;
import 'package:permission_handler/permission_handler.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class Parte_10_3 {
  Future<void> createPDF_10_3(
    
      String fecha,
      String? compania,
      String despacho,
      String hr6_0,
      String hr6_3,
      String hr6_9,
      String hr6_10,
      String kmsalida,
      String kmllegada,
      String comuna,
      String direccion,
      String villapoblacion,
      String rutpropietario,
      String nombrepropietario,
      String apellidopropietario,
      String telefonopropietario,
      String? eocupante,
      String descpreliminar,
      List<Map<String, String>> otroocupante,
      List<Map<String, String>> otraunidad,
      List<Map<String, String>> baccidentado,
      List<Map<String, String>> servicios,
      List<Map<String, String>> asistentes,
      String unidad,
      String obtp,
      String obac) async {
    PdfDocument document = PdfDocument();
    final page1 = document.pages.add();
    final page2 = document.pages.add();
    final page3 = document.pages.add();


    page1.graphics.drawString('Cuerpo de Bomberos Cabrero',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 40, page1.getClientSize().width,
            page1.getClientSize().height));

    page2.graphics.drawString('Cuerpo de Bomberos Cabrero',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 40, page2.getClientSize().width,
            page2.getClientSize().height));
    page3.graphics.drawString('Cuerpo de Bomberos Cabrero',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 40, page2.getClientSize().width,
            page2.getClientSize().height));
            
if(compania != "Comandancia"){
      page1.graphics.drawImage(
              PdfBitmap(await _readImageData('cbcabrero.png')),
              const Rect.fromLTWH(420, 0, 80, 80),
            );
      page2.graphics.drawImage(
              PdfBitmap(await _readImageData('cbcabrero.png')),
              const Rect.fromLTWH(420, 0, 80, 80),
            );
      page3.graphics.drawImage(
              PdfBitmap(await _readImageData('cbcabrero.png')),
              const Rect.fromLTWH(420, 0, 80, 80),
            );
    }


PdfFont font = PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold);
    page1.graphics.drawString('Parte de emergencias', font ,bounds: Rect.fromLTWH(150, 70, page1.getClientSize().width,page1.getClientSize().height));
    page1.graphics.drawString('10-3', font, bounds: Rect.fromLTWH(230, 90, page1.getClientSize().width, page1.getClientSize().height));
    

page2.graphics.drawString('Parte de emergencias', font ,bounds: Rect.fromLTWH(150, 70, page1.getClientSize().width,page1.getClientSize().height));
    page2.graphics.drawString('10-3', font, bounds: Rect.fromLTWH(230, 90, page1.getClientSize().width, page1.getClientSize().height));
    

page3.graphics.drawString('Parte de emergencias', font ,bounds: Rect.fromLTWH(150, 70, page1.getClientSize().width,page1.getClientSize().height));
    page3.graphics.drawString('10-3', font, bounds: Rect.fromLTWH(230, 90, page1.getClientSize().width, page1.getClientSize().height));
    

    if (compania == 'Primera') {
      page1.graphics.drawImage(
        PdfBitmap(await _readImageData('primera.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page1.graphics.drawString(
        'Primera compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page1.getClientSize().width,
            page1.getClientSize().height));

      page2.graphics.drawImage(
        PdfBitmap(await _readImageData('primera.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page2.graphics.drawString(
        'Primera compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page2.getClientSize().width,
            page2.getClientSize().height));

       page3.graphics.drawImage(
        PdfBitmap(await _readImageData('primera.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page3.graphics.drawString(
        'Primera compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page3.getClientSize().width,
            page3.getClientSize().height));
    }
    if (compania == 'Segunda') {
      page1.graphics.drawImage(
        PdfBitmap(await _readImageData('segunda.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page1.graphics.drawString(
        'Segunda compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page1.getClientSize().width,
            page1.getClientSize().height));
      page2.graphics.drawImage(
        PdfBitmap(await _readImageData('segunda.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page2.graphics.drawString(
        'Segunda compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page2.getClientSize().width,
            page2.getClientSize().height));

      page3.graphics.drawImage(
        PdfBitmap(await _readImageData('segunda.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page3.graphics.drawString(
        'Segunda compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page3.getClientSize().width,
            page3.getClientSize().height));
    }
    if (compania == 'Tercera') {
      page1.graphics.drawImage(
        PdfBitmap(await _readImageData('tercera.jpg')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page1.graphics.drawString(
        'Tercera compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page1.getClientSize().width,
            page1.getClientSize().height));

      page2.graphics.drawImage(
        PdfBitmap(await _readImageData('tercera.jpg')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page2.graphics.drawString(
        'Tercera compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page2.getClientSize().width,
            page2.getClientSize().height));
      
      page3.graphics.drawImage(
        PdfBitmap(await _readImageData('tercera.jpg')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page3.graphics.drawString(
        'Tercera compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page3.getClientSize().width,
            page3.getClientSize().height));
    }
    if (compania == 'Cuarta') {
      page1.graphics.drawImage(
        PdfBitmap(await _readImageData('cuarta.jpg')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page1.graphics.drawString(
        'Cuarta compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page1.getClientSize().width,
            page1.getClientSize().height));

      page2.graphics.drawImage(
        PdfBitmap(await _readImageData('cuarta.jpg')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page2.graphics.drawString(
        'Cuarta compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page2.getClientSize().width,
            page2.getClientSize().height));
      
      page3.graphics.drawImage(
        PdfBitmap(await _readImageData('cuarta.jpg')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page3.graphics.drawString(
        'Cuarta compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page3.getClientSize().width,
            page3.getClientSize().height));
    }

    if (compania == 'Quinta') {
      page1.graphics.drawImage(
        PdfBitmap(await _readImageData('quinta.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page1.graphics.drawString(
        'Quinta compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page1.getClientSize().width,
            page1.getClientSize().height));

      page2.graphics.drawImage(
        PdfBitmap(await _readImageData('quinta.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page2.graphics.drawString(
        'Quinta compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page2.getClientSize().width,
            page2.getClientSize().height));

      page3.graphics.drawImage(
        PdfBitmap(await _readImageData('quinta.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page3.graphics.drawString(
        'Quinta compañia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page3.getClientSize().width,
            page3.getClientSize().height));
    }
    if (compania == 'Comandancia') {
      page1.graphics.drawImage(
        PdfBitmap(await _readImageData('cbcabrero.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page1.graphics.drawString(
        'Comandancia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page1.getClientSize().width,
            page1.getClientSize().height));
      page2.graphics.drawImage(
        PdfBitmap(await _readImageData('cbcabrero.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page2.graphics.drawString(
        'Comandancia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page2.getClientSize().width,
            page2.getClientSize().height));
      page3.graphics.drawImage(
        PdfBitmap(await _readImageData('cbcabrero.png')),
        const Rect.fromLTWH(0.9, 0, 90, 90),
      );
      page3.graphics.drawString(
        'Comandancia', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(100, 20, page3.getClientSize().width,
            page3.getClientSize().height));
    }

    

    page1.graphics.drawString(
        '1.- Datos generales', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            5, 130, page1.getClientSize().width, page1.getClientSize().height));

    PdfGrid gridDg1 = PdfGrid();
    _createGrid(gridDg1, 2);

    _addGridRow(gridDg1, 'Fecha:', fecha);
    _addGridRow(gridDg1, 'Compañia:', compania ?? '');
    _addGridRow(gridDg1, 'Hr Despacho:', despacho);
    _addGridRow(gridDg1, 'Hr 6-0:', hr6_0);
    _addGridRow(gridDg1, 'Km Salida:', kmsalida);

    _drawGrid(page1, gridDg1, const Rect.fromLTWH(0, 150, 0, 0));

    
    PdfGrid gridDg2 = PdfGrid();
    _createGrid(gridDg2, 2);

    _addGridRow(gridDg2, 'Unidad', unidad);
    _addGridRow(gridDg2, 'Hora 6-3:', hr6_3);
    _addGridRow(gridDg2, 'Hora 6-9:', hr6_9);
    _addGridRow(gridDg2, 'Hora 6-10:', hr6_10);
    _addGridRow(gridDg2, 'Km Llegada:', kmllegada);

    _drawGrid(page1, gridDg2, const Rect.fromLTWH(300, 150, 0, 0));

    
    page1.graphics.drawString(
        '2.- Datos del lugar', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            5, 280, page1.getClientSize().width, page1.getClientSize().height));

    PdfGrid gridDl1 = PdfGrid();
    _createGrid(gridDl1, 2);
    gridDl1.columns[0].width = 100; 
    gridDl1.columns[1].width = 400;
    _addGridRow(gridDl1, 'Comuna:', comuna);
    _addGridRow(gridDl1, 'Dirección:', direccion);
    _addGridRow(gridDl1, 'Villa/Población', villapoblacion);
    _drawGrid(page1, gridDl1, const Rect.fromLTWH(0, 300, 0, 0));

    
    page1.graphics.drawString('3.- Datos del afectado',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            5, 400, page1.getClientSize().width, page1.getClientSize().height));

    PdfGrid gridDp1 = PdfGrid();
    _createGrid(gridDp1, 2);
    gridDp1.columns[0].width = 100; 
    gridDp1.columns[1].width = 400;
    _addGridRow(gridDp1, 'Rut:', rutpropietario);
    _addGridRow(gridDp1, 'Nombres:', nombrepropietario);
    _addGridRow(gridDp1, 'Apellidos', apellidopropietario);
    _addGridRow(gridDp1, 'Telefono', telefonopropietario);
    _addGridRow(gridDp1, 'Estado', eocupante ?? '');
    _drawGrid(page1, gridDp1, const Rect.fromLTWH(0, 420, 0, 0));


    page1.graphics.drawString(
        'Descripcion preliminar', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            0,580, page1.getClientSize().width, page1.getClientSize().height));

    PdfGrid griddp = PdfGrid();
    griddp.columns.add(count: 1);
    griddp.columns[0].width = 600;

    _addGridRow13(griddp, descpreliminar);

    _drawGrid(page1, griddp, const Rect.fromLTWH(0, 600, 0, 0));



    page2.graphics.drawString('4.- Otros afectados',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            0, 140, page2.getClientSize().width, page2.getClientSize().height));

      page2.graphics.drawString('Nombre',
        PdfStandardFont(PdfFontFamily.helvetica, 13),
        bounds: Rect.fromLTWH(
            0, 160, page2.getClientSize().width, page2.getClientSize().height));

     page2.graphics.drawString('Rut',
        PdfStandardFont(PdfFontFamily.helvetica, 13),
        bounds: Rect.fromLTWH(
            200, 160, page2.getClientSize().width, page2.getClientSize().height));
      page2.graphics.drawString('Edad',
        PdfStandardFont(PdfFontFamily.helvetica, 13),
        bounds: Rect.fromLTWH(
            300, 160, page2.getClientSize().width, page2.getClientSize().height));
      page2.graphics.drawString('Estado',
        PdfStandardFont(PdfFontFamily.helvetica, 13),
        bounds: Rect.fromLTWH(
            400, 160, page2.getClientSize().width, page2.getClientSize().height));


    PdfGrid gridOtroocupantes = PdfGrid();
    _createGrid(gridOtroocupantes, 4);
    gridOtroocupantes.columns[0].width = 200;
    gridOtroocupantes.columns[1].width = 100;
    gridOtroocupantes.columns[2].width = 50;
    gridOtroocupantes.columns[3].width = 150;


    
    for (var otroocupantes in otroocupante) {
      _addGridRows11(gridOtroocupantes,otroocupantes['Nombre'] ?? '', otroocupantes['Rut'] ?? '',
          otroocupantes['Edad'] ?? '',otroocupantes['Estado'] ?? '');
    }

  
    _drawGrid(page2, gridOtroocupantes, const Rect.fromLTWH(0, 180, 0, 0));

    page2.graphics.drawString(
        '5.- Material mayor', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            0, 340, page2.getClientSize().width, page1.getClientSize().height));
    page2.graphics.drawString(
        'Unidad', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            0, 360, page2.getClientSize().width, page1.getClientSize().height));
    page2.graphics.drawString(
        'Maquinista', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            130, 360, page2.getClientSize().width, page1.getClientSize().height));

    page2.graphics.drawString(
        'Obac', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            250, 360, page2.getClientSize().width, page1.getClientSize().height));

    page2.graphics.drawString(
        'Nro personal', PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            380, 360, page2.getClientSize().width, page1.getClientSize().height));

    PdfGrid gridmaterialm = PdfGrid();
    _createGrid(gridmaterialm, 4);
     gridmaterialm.columns[0].width = 125;
     gridmaterialm.columns[1].width = 125;
     gridmaterialm.columns[2].width = 125;
     gridmaterialm.columns[3].width = 125;

    
    for (var otrom in otraunidad) {
      _addGridRows2(
          gridmaterialm,
          otrom['Unidad'] ?? '',
          otrom['Maquinista'] ?? '',
          otrom['Obac'] ?? '',
          otrom['Nro de personal'] ?? '');
    }

    
    _drawGrid(page2, gridmaterialm, const Rect.fromLTWH(0, 380, 0, 0));

    page2.graphics.drawString('6.- bomberos accidentados',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            0, 580, page2.getClientSize().width, page2.getClientSize().height));
    page2.graphics.drawString('Cia',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            0, 600, page2.getClientSize().width, page2.getClientSize().height));
    page2.graphics.drawString('Nombre',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            50, 600, page2.getClientSize().width, page2.getClientSize().height));
    page2.graphics.drawString('Rut',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            170, 600, page2.getClientSize().width, page2.getClientSize().height));
    page2.graphics.drawString('Constancia',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            230, 600, page2.getClientSize().width, page2.getClientSize().height));
    page2.graphics.drawString('Comisaria',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            330, 600, page2.getClientSize().width, page2.getClientSize().height));
    page2.graphics.drawString('Detalles',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            430, 600, page2.getClientSize().width, page2.getClientSize().height));

    PdfGrid gridbaccidentados = PdfGrid();
    _createGrid(gridbaccidentados, 6);
    gridbaccidentados.columns[0].width = 50;
    gridbaccidentados.columns[1].width = 120;
    gridbaccidentados.columns[2].width = 80;
    gridbaccidentados.columns[3].width = 50;
    gridbaccidentados.columns[4].width = 80;
    gridbaccidentados.columns[5].width = 135;


    for (var baccidentados in baccidentado) {
      _addGridRows4(
          gridbaccidentados,
          baccidentados['Compañia'] ?? '',
          baccidentados['Nombre'] ?? '',
          baccidentados['Rut'] ?? '',
          baccidentados['Constancia'] ?? '',
          baccidentados['Comisaría'] ?? '',
          baccidentados['Detalles'] ?? '');
    }

    
    _drawGrid(page2, gridbaccidentados, const Rect.fromLTWH(0, 620, 0, 0));

    page3.graphics.drawString('7.- Otros servicios de emergencia en el lugar',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            0, 140, page3.getClientSize().width, page1.getClientSize().height));
    page3.graphics.drawString('Servicios',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            0, 160, page3.getClientSize().width, page1.getClientSize().height));
    page3.graphics.drawString('Unidad',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            100, 160, page3.getClientSize().width, page1.getClientSize().height));
    page3.graphics.drawString('A cargo',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            200, 160, page3.getClientSize().width, page1.getClientSize().height));
    page3.graphics.drawString('Nro personal',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            300, 160, page3.getClientSize().width, page1.getClientSize().height));
    page3.graphics.drawString('Observaciones',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            400, 160, page3.getClientSize().width, page1.getClientSize().height));

    PdfGrid gridServicios = PdfGrid();
    _createGrid(gridServicios, 5);
    gridbaccidentados.columns[0].width = 50;
    gridbaccidentados.columns[0].width = 50;
    gridbaccidentados.columns[0].width = 50;
    gridbaccidentados.columns[0].width = 50;

    
    for (var servicio in servicios) {
      _addGridRows(
          gridServicios,
          servicio['Servicios'] ?? '',
          servicio['Unidad'] ?? '',
          servicio['A cargo'] ?? '',
          servicio['Nro de personal'] ?? '',
          servicio['Observaciones'] ?? '');
    }

    
    _drawGrid(page3, gridServicios, const Rect.fromLTWH(0, 180, 0, 0));


page3.graphics.drawString(
  '8.- Asistencia:', PdfStandardFont(PdfFontFamily.helvetica, 15),
  bounds: Rect.fromLTWH(0, 400, page3.getClientSize().width, page3.getClientSize().height)
);
page3.graphics.drawString(
  'Nombre', PdfStandardFont(PdfFontFamily.helvetica, 15),
  bounds: Rect.fromLTWH(0, 420, page3.getClientSize().width, page3.getClientSize().height)
);
page3.graphics.drawString(
  'Nombre', PdfStandardFont(PdfFontFamily.helvetica, 15),
  bounds: Rect.fromLTWH(280, 420, page3.getClientSize().width, page3.getClientSize().height)
);
page3.graphics.drawString(
  'Rut', PdfStandardFont(PdfFontFamily.helvetica, 15),
  bounds: Rect.fromLTWH(150, 420, page3.getClientSize().width, page3.getClientSize().height)
);
page3.graphics.drawString(
  'Rut', PdfStandardFont(PdfFontFamily.helvetica, 15),
  bounds: Rect.fromLTWH(430, 420, page3.getClientSize().width, page3.getClientSize().height)
);


   List<List<Map<String, String>>> dividirListaEnChunks(List<Map<String, String>> lista, int tamanoChunk) {
  List<List<Map<String, String>>> chunks = [];
  for (var i = 0; i < lista.length; i += tamanoChunk) {
    chunks.add(lista.sublist(i, i + tamanoChunk > lista.length ? lista.length : i + tamanoChunk));
  }
  return chunks;
}


List<List<Map<String, String>>> chunksAsistentes = dividirListaEnChunks(asistentes, 1);


double xPosition = 0;
double yPosition = 440;


bool leftSide = true;

for (var i = 0; i < chunksAsistentes.length; i++) {
  var chunk = chunksAsistentes[i];

  if (!leftSide) {
    
    yPosition += 200; 
  }

  PdfGrid grida = PdfGrid();
  _createGrid2(grida, 2);
  grida.columns[0].width = 150; 
  grida.columns[1].width = 80;

  for (var asistente in chunk) {
    _addGridRow(grida, asistente['nombre'] ?? '', asistente['rut'] ?? '');

  }
    if (!leftSide) {
    
    xPosition = 280;
    yPosition = 440;
  }

  _drawGrid(page3, grida, Rect.fromLTWH(xPosition, yPosition, 0, 0));

  

  
  leftSide = !leftSide;
  xPosition = leftSide ? 0 : page3.getClientSize().width / 2 + 10; 
}

    page3.graphics.drawString('Oficial o voluntario que toma el parte: $obtp',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            0, 724, page3.getClientSize().width, page1.getClientSize().height));

    page3.graphics.drawString('Oficial o voluntario a cargo: $obac',
        PdfStandardFont(PdfFontFamily.helvetica, 15),
        bounds: Rect.fromLTWH(
            0, 744, page3.getClientSize().width, page1.getClientSize().height));

    List<int> bytes = await document.save();
    document.dispose();

    await _saveAndLaunchFile(bytes, unidad,fecha);
  }

  Future<Uint8List> _readImageData(String name) async {
    final data = await rootBundle.load('images/$name');
    return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  }

 

  void _addGridRow13(PdfGrid grid, String text) {
    PdfGridRow row = grid.rows.add();
    row.cells[0].value = text;

    
    row.cells[0].style = PdfGridCellStyle(
      font: PdfStandardFont(PdfFontFamily.helvetica, 15),
    );
  }

 

  void _addGridRows(PdfGrid grid, String cell1Value, String cell2Value,
      String cell3Value, String cell4Value, String cell5Value) {
    PdfGridRow row = grid.rows.add();
    row.cells[0].value = cell1Value;
    row.cells[1].value = cell2Value;
    row.cells[2].value = cell3Value;
    row.cells[3].value = cell4Value;
    row.cells[4].value = cell5Value;
  }

  void _addGridRows4(
      PdfGrid grid,
      String cell1Value,
      String cell2Value,
      String cell3Value,
      String cell4Value,
      String cell5Value,
      String cell6Value) {
    PdfGridRow row = grid.rows.add();
    row.cells[0].value = cell1Value;
    row.cells[1].value = cell2Value;
    row.cells[2].value = cell3Value;
    row.cells[3].value = cell4Value;
    row.cells[4].value = cell5Value;
    row.cells[5].value = cell6Value;
  }

 

    void _addGridRows11(
      PdfGrid grid, String cell1Value, String cell2Value, String cell3Value,String cell4Value) {
    PdfGridRow row = grid.rows.add();
    row.cells[0].value = cell1Value;
    row.cells[1].value = cell2Value;
    row.cells[2].value = cell3Value;
    row.cells[3].value = cell4Value;
  }
   
  void _addGridRows2(PdfGrid grid, String cell1Value, String cell2Value,
      String cell3Value, String cell4Value) {
    PdfGridRow row = grid.rows.add();
    row.cells[0].value = cell1Value;
    row.cells[1].value = cell2Value;
    row.cells[2].value = cell3Value;
    row.cells[3].value = cell4Value;
  }

  void _createGrid(PdfGrid grid, int columnsCount) {
    grid.style = PdfGridStyle(
      font: PdfStandardFont(PdfFontFamily.helvetica, 13),
      cellPadding: PdfPaddings(left: 5, right: 2, top: 2, bottom: 2),
    );
    grid.columns.add(count: columnsCount);
    for (int i = 0; i < columnsCount; i++) {
      grid.columns[i].width = 100;
    }
  }
      void _createGrid2(PdfGrid grid, int columnsCount) {
    grid.style = PdfGridStyle(
      font: PdfStandardFont(PdfFontFamily.helvetica, 12),
      cellPadding: PdfPaddings(left: 5, right: 2, top: 2, bottom: 2),
    );
    grid.columns.add(count: columnsCount);
    for (int i = 0; i < columnsCount; i++) {
      grid.columns[i].width = 100;
    }
  }

  void _addGridRow(PdfGrid grid, String cell1Value, String cell2Value) {
    PdfGridRow row = grid.rows.add();
    row.cells[0].value = cell1Value;
    row.cells[1].value = cell2Value;
  }

  void _drawGrid(PdfPage page, PdfGrid grid, Rect bounds) {
    grid.draw(page: page, bounds: bounds);
  }

Future<void> requestPermissions() async {
  
  var status = await Permission.storage.status;
  if (!status.isGranted) {
    
    status = await Permission.storage.request();
    if (status.isGranted) {
      print("Permission granted");
    } else {
      print("Permission denied");
    }
  }
}

Future<void> _saveAndLaunchFile(List<int> bytes, String unidad, String fecha) async {
  await requestPermissions(); 
  
  try {
    final directory = await getExternalStorageDirectory(); 
    final path = directory?.path ?? '';
    final fileName = '10-3_${unidad}_$fecha.pdf';
    final file = File('$path/$fileName');

    
    if (!Directory(path).existsSync()) {
      print('Directory does not exist.');
      return;
    }

    
    await file.writeAsBytes(bytes, flush: true);

    
    final result = await OpenFile.open('$path/$fileName');
    if (result.type != ResultType.done) {
      print('Failed to open file: ${result.message}');
    }
  } catch (e) {
    print('Error occurred: $e');
  }
}
}
