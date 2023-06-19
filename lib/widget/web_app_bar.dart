import 'package:flutter/material.dart';

class WebAppBar extends StatefulWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
        "assets/channels4_profile.jpg",
        fit: BoxFit.contain,
        ),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.search)
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_cart_rounded)
          ),
      ]),
    );
    
  }
}