import 'package:apoio_gmi/widget/item_produto.dart';
import 'package:apoio_gmi/widget/mobile_app_bar.dart';
import 'package:apoio_gmi/widget/web_app_bar.dart';
import 'package:flutter/material.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVisualizacao(double larguraTela) {
    int colunas = 2;
    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraint) {
      var largura = Constraint.maxWidth;
      var alturaBarra = AppBar().preferredSize.height;

      return Scaffold(
        appBar: largura < 600
            ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(largura, alturaBarra))
            : PreferredSize(
                child: WebAppBar(), preferredSize: Size(largura, alturaBarra)),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _ajustarVisualizacao(largura),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              ItemProduto("Guarda Municipal", "Itajaí", "20220709_015134.jpg"),
              ItemProduto(
                  "Guarda Municipal", "Itajaí", "20220705_001902-01.jpeg"),
              ItemProduto("Guarda Municipal", "Itajaí", "20221211_211716.jpg"),
              ItemProduto(
                  "Guarda Municipal", "Itajaí", "channels4_profile.jpg"),
              ItemProduto("Guarda Municipal", "Itajaí", "20220709_015134.jpg"),
              ItemProduto(
                  "Guarda Municipal", "Itajaí", "20220705_001902-01.jpeg"),
              ItemProduto("Guarda Municipal", "Itajaí", "20221211_211716.jpg"),
              ItemProduto(
                  "Guarda Municipal", "Itajaí", "channels4_profile.jpg"),
            ],
          ),
        ),
      );
    });
  }
}
