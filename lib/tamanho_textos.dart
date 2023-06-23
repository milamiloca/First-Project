import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({Key? key}) : super(key: key);

  @override
  State<TamanhoTextos> createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tamanhos de textos'),
        ),
        body: Column(
          children: [
            Text(
              "Servir e proteger"
              "Guarda Municipal de Itajaí"
              "Incumbe às guardas municipais, instituições de caráter civil, uniformizadas e armadas, a função de proteção municipal preventiva",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 50,
            ),
            AutoSizeText(
              "Incumbe às guardas municipais, instituições de caráter civil, "
              "Guarda Municipal dearáter civção de proteção municipal preventiva"
              "Incumbe às guardas municipais, instituil, uniformizadas e função de proteção municipal preventiva",
              style: TextStyle(fontSize: 30),
              //

              // minFontSize: 10,
              // maxLines: 2,
              // stepGranularity: 10,

              maxLines: 3,
              presetFontSizes: [30, 22, 10],
            ),
          ],
        ));
  }
}
