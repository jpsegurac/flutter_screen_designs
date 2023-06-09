import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});
  
    final boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors:[
            Color(0xff2e305f),
            Color(0xff202333)
          ]
        )
      );

  @override
  Widget build(BuildContext context) {


    return Stack(

      children: [

        //purple gradient container
        Container(
          decoration: boxDecoration,
        ),

        // geometric figure container
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox()
        )

      ],
    );
  }
}



class _PinkBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 480,
        height: 480,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ]
          )
        ),
      ),
    );
  }
}