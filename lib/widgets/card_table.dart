import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.pie_chart, text: 'General',),
            _SingleCard(color: Colors.teal, icon: Icons.bus_alert_outlined, text: 'Transport',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.pinkAccent, icon: Icons.shopping_bag_outlined, text: 'Shop',),
            _SingleCard(color: Colors.teal, icon: Icons.list_alt, text: 'List',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.yellow, icon: Icons.local_movies_outlined, text: 'Movies',),
            _SingleCard(color: Colors.brown, icon: Icons.cloud, text: 'Cloud',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.yellow, icon: Icons.local_movies_outlined, text: 'Movies',),
            _SingleCard(color: Colors.brown, icon: Icons.cloud, text: 'Cloud',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.yellow, icon: Icons.local_movies_outlined, text: 'Movies',),
            _SingleCard(color: Colors.brown, icon: Icons.cloud, text: 'Cloud',),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({ required this.icon, required this.color, required this.text});

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {


    return _CardBackground(column: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(icon,size: 35,),
                ),
                const SizedBox(height: 15),
                Text(text, style: const TextStyle(color: Colors.blue, fontSize: 18),)
              ],
            )
           );
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({
    
    required this.column,
  });

  final Column column;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          
          filter: ImageFilter.blur(sigmaX:5    ,sigmaY: 5),
          child: Container(
            // margin: const EdgeInsets.all(25),
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(10)
            ),
            child: column,
          ),
        ),
      ),
    );
  }
}