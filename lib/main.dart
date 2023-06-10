
import 'package:designs_app/screens/screeens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.light(),
      //set the screen you want to load
      initialRoute: 'home-screen',
      routes: {
        'basic_design':( _ ) => const BasicDesignScreen(),
        'scroll-screen':( _ ) => const ScrollScreen(),
        'home-screen':( _ ) => const HomeScreen(),
      },
    );
  }
}

