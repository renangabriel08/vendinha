import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vendinha/pages/home.dart';
import 'package:vendinha/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Cores.azul),
      ),
      routes: {'/home': (context) => const Home()},
      initialRoute: '/home',
    );
  }
}
