import 'package:designs_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          //Background de la app
          Background(),
          
          //home body
          _HomeBody(),

          

        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [

          //Titles
          PageTitle(),

          //Card Grid
          CardTable()



        ],
      ),
    );
  }
}