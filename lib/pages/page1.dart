import 'package:flutter/material.dart';
import 'package:router_animate/pages/page2.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: Center(
        child: Text('Esto es la pagina 1'),
     ),
     floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, _crearRuta());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      )
   );
  }

  Route _crearRuta() {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) { 
        return Page2Page();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        // return SlideTransition(
        //   position: Tween<Offset>(begin: Offset(-0.5, 1.0), end: Offset.zero).animate(curvedAnimation) ,
        //   child: child,
        // );
        // Scale transition
        // return ScaleTransition(
        //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
        //   child: child,
        // );
        //Rotation transition
        // return RotationTransition(
        //   child: child,
        //   turns: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
        // );
        // Fade in transition
        // return FadeTransition(
        //   child: child,
        //   opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
        // );


        return RotationTransition(
          child: FadeTransition(
            child: child,
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          ),
          turns: Tween<double>(begin: 0.9, end: 1.0).animate(curvedAnimation),
        );
      },
    );
  }
}