import 'package:flutter/material.dart';
import 'package:flutter_design/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_screen',
      routes: {
        'basic_design': (BuildContext context) => const BasicDesignScreen(),
        'scroll_screen': (BuildContext context) => const ScrollDesignScreen(),
      },
    );
  }
}
