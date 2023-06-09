import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            
            colors: [
              Color(0xff7aecc2),
              Color(0xff4bb0cc)
            ]
          )
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children:const [ 
            Page1(),
            Page2(),
          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Background(),

        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white, fontSize: 60.0,fontWeight: FontWeight.bold);
    return SafeArea(
      minimum: const EdgeInsets.only(top: 100),
      top: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('11°', style: textStyle,),
          const Text('Miercoles',style: textStyle),
          Expanded(child: Container()),
    
          const Icon(Icons.keyboard_arrow_down_rounded, size: 100,color: Colors.white,),
          
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff4db4d0),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/images/scroll-1.png')
      )
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff4db4d0),
      child: Center(
        child: TextButton(
          onPressed:() {
            
          },  
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: const StadiumBorder()
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 60.0,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}