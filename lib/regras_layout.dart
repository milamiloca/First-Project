import 'package:flutter/material.dart';

class RegrasLayouts extends StatefulWidget {
  const RegrasLayouts({Key? key}) : super(key: key);

  @override
  State<RegrasLayouts> createState() => _RegrasLayoutsState();
}

class _RegrasLayoutsState extends State<RegrasLayouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // width: 300,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 211, 158, 212),
        child: LayoutBuilder(
          builder: (context, constraint){

            var largura = constraint.maxWidth;
            print("Largura: $largura");

            if( largura < 600){//celular
              return Text("Celulares");
            }else if( largura < 960 ) { //celulares maiores e tablet
              return Text("Celulares & Tablets");
            }else{
              return Text("Telas maiores");

            } 

            // return Container(
            //   child: Text('Milinha Mila Miloca'),
            // );

          },
        ),
      )
    );
    
  }
}