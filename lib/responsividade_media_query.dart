import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({Key? key}) : super(key: key);

  @override
  State<ResponsividadeMediaQuery> createState() => _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {

  var largura = MediaQuery.of(context).size.width;
  var altura = MediaQuery.of(context).size.height;
  var alturaBarraStatus = MediaQuery.of(context).padding.top;
  var alturaAppBar = AppBar().preferredSize.height;
  // var larguraItem = largura * 0.25;//100%
  var larguraItem = largura / 3;

    return Scaffold(
      appBar: AppBar(
        title: Text('Casa de sentimentos bons')
      ),
      body: Row(
        children:[
          Container(
            width: larguraItem,
            height: 200,
            color: Color.fromARGB(255, 233, 161, 185),
            child: Text('Mila'),
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Color.fromARGB(255, 114, 233, 183),
            child: Text('Milinha'),
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Color.fromARGB(255, 208, 161, 240),
            child: Text('Miloca'),
          )
        ],
      ),
    );
    
  }
}