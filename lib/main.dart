import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:stackmod_design/ProductTile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark));
    return const MaterialApp(
      title: 'StackMod Design',
      debugShowCheckedModeBanner: false,
      home: ProductTile(),
    );
  }
}
