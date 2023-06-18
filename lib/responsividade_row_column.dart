import 'package:flutter/material.dart';

class ResponsividadeRowCol extends StatefulWidget {
  const ResponsividadeRowCol({Key? key}) : super(key: key);

  @override
  State<ResponsividadeRowCol> createState() => _ResponsividadeRowColState();
}

class _ResponsividadeRowColState extends State<ResponsividadeRowCol> {
  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
      
    return Scaffold(
      appBar: AppBar(
        title: Text('Casa de sentimentos bons'),
      ),
      body: Column(
        children: [
          // Container(
          //   color: Colors.black,
          //   height: 200,
          // ),
          Expanded(
          flex: 2,
          child: Container(
            color: Color.fromARGB(255, 105, 176, 241),
          )
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Color.fromARGB(255, 228, 151, 170),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Color.fromARGB(255, 42, 214, 134),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Color.fromARGB(255, 206, 103, 129),
                  )
                )
              ],
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
            )
          )
        ],
      ),
    );
  }
}