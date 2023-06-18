
import 'package:apoio_gmi/regras_layout.dart';
import 'package:apoio_gmi/responsividade_media_query.dart';
import 'package:apoio_gmi/responsividade_row_column.dart';
import 'package:flutter/material.dart';

import 'loja_virtual.dart';
import 'orientacao.dart';

void main() {
runApp(MaterialApp(
  title: "Flutter Web",
  debugShowCheckedModeBanner: false,
  //home: ResponsividadeMediaQuery(),
  //home: ResponsividadeRowCol(),
  //home: ResponsividadeWrap(),
  //home: Orientacao(),
  // home: RegrasLayouts(),
  home: LojaVirtual(), 
));
}