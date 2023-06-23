import 'dart:js';

import 'package:apoio_gmi/regras_layout.dart';
import 'package:apoio_gmi/responsividade_media_query.dart';
import 'package:apoio_gmi/responsividade_row_column.dart';
import 'package:apoio_gmi/tamanho_proporcional.dart';
import 'package:apoio_gmi/tamanho_textos.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'loja_virtual.dart';
import 'orientacao.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      title: "Flutter Web",
      debugShowCheckedModeBanner: false,

      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),

//     //home: ResponsividadeMediaQuery(),
//     //home: ResponsividadeRowCol(),
//     //home: ResponsividadeWrap(),
//     //home: Orientacao(),
//     // home: RegrasLayouts(),
      home: LojaVirtual(),
//     // home: TamanhoTextos(),
//     // home: TamanhoProporcional(),
//     // home: DiferentesTamanhos(),
    );
  }));
}
