import 'package:flutter/material.dart';

class DiferentesTamanhos extends StatefulWidget {
  const DiferentesTamanhos({Key? key}) : super(key: key);

  @override
  State<DiferentesTamanhos> createState() => _DiferentesTamanhosState();
}

class _DiferentesTamanhosState extends State<DiferentesTamanhos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Diferentes tamanhos'),
        ),
        body: IntrinsicHeight(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(width: 200, color: Colors.orange, child: Text("Item 1")),
            Container(
                width: 200,
                color: Colors.green,
                child: Text(
                    "AHDAUHDUASHUASHD FFFFFFFFSDFSDFSDFDSFFFFFFFFFFFFFFFJEFIEWHFUIWEHFUWHEFUIHEWUFH 2"))
          ],
        )));
  }
}
