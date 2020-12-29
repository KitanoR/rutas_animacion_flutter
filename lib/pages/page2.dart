import 'package:flutter/material.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Text('Esto es la pagina 2'),
     ),
   );
  }
}