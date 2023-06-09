import 'dart:math';

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //imagen
          const Image(image: AssetImage('assets/images/landscape.png')),

          // Titulo independiente
          const Title(),


          //Botones
          const ButtonSection(),

          //Description

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: const Text('Dolor esse ex cillum labore voluptate excepteur sunt et. Eiusmod dolor id anim nisi nisi aliquip sint mollit amet proident eu. Veniam aliquip amet elit commodo tempor ea.')
          )




        ],
      ),
    );
  }
}


class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: Row(
        
        children: [
    
          const Column(     
            crossAxisAlignment: CrossAxisAlignment.start,           
            children: [                  
              Text('Lugar de paisaje en pixeles', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('landesteg, Switzerland', style: TextStyle(color: Colors.black45 ),)
            ],
          ),

          Expanded(child: Container()),

          const Icon(Icons.star, color: Colors.red,),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: const  Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Buttonstyle1(icon: Icon(Icons.phone, color:Colors.blue ,), texto: 'CALL', 0.0),
          Buttonstyle1(icon: Icon(Icons.navigation_rounded, color:Colors.blue), texto: 'ROUTE', 40.0),
          Buttonstyle1(icon: Icon(Icons.share, color:Colors.blue), texto: 'SHARE', 0.0)
    
          
        ],
      ),
    );
  }
}

class Buttonstyle1 extends ButtonSection {
  const Buttonstyle1(     
     
    this.angle, 
    {required this.icon,
    required this.texto,
    super.key,
  });
  final Icon icon;
  final String texto;
  final double angle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.rotate(
          angle: angle* pi/180,
          child: icon,
        ),
        const SizedBox(height: 10),
        Text(texto, style: const TextStyle(color: Colors.blue),)
      ],
    
    );
  }
}
