import 'package:apoio_gmi/widget/mobile_app_bar.dart';
import 'package:apoio_gmi/widget/web_app_bar.dart';
import 'package:flutter/material.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraint){

        var largura = Constraint.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
      appBar: largura < 600
          ? PreferredSize(
            child: MobileAppBar(),
            preferredSize: Size(largura, alturaBarra)
            )
          : PreferredSize(
            child: WebAppBar(),
            preferredSize: Size(largura, alturaBarra)
            ),
        );
      }
      );
    
  }
}