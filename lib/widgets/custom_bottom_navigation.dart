import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor:const  Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: const[
        BottomNavigationBarItem(
          
          icon: Icon(Icons.area_chart_sharp),
          label: 'Graph'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.gif_box_rounded),
          label: 'calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: 'Usuarios',
        ),
      ]
    );
  }
}