import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({Key? key}) : super(key: key);

  @override
  State<ResponsividadeWrap> createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {
  @override
  Widget build(BuildContext context) {

    double altura = 100;
    double largura = 200;

    return Scaffold(
      appBar: AppBar(title: Text('Wrap'),),
      body: Container(
        color: Colors.black26,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 10,
          spacing: 10,
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.pink,
            ),
            Container(
              width: largura,
              height: altura,
              color: Color.fromARGB(255, 97, 197, 236),
            ),
            Container(
              width: largura,
              height: altura,
              color: Color.fromARGB(255, 123, 201, 147),
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.pink,
            ),
            Container(
              width: largura,
              height: altura,
              color: Color.fromARGB(255, 12, 39, 15),
            )
          ],
        ),
      ),
    );
    
  }
}