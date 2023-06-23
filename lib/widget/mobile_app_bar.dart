import 'package:flutter/material.dart';

class MobileAppBar extends StatefulWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  State<MobileAppBar> createState() => _MobileAppBarState();
}

class _MobileAppBarState extends State<MobileAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Image.asset(
        "assets/LogoPNG.png",
        height: 45,
        fit: BoxFit.contain,
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_rounded)),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        SizedBox(
          width: 10,
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("Cadastrar"),
          style: OutlinedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 151, 3, 3),
            primary: Color.fromARGB(255, 201, 164, 133),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("Entrar"),
          style: OutlinedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 238, 182, 79),
            primary: Color.fromARGB(255, 151, 3, 3),
          ),
        )
      ],
    );
  }
}
