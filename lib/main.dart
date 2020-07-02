import 'package:flutter/material.dart';
import 'package:kerjaansatu/screen/splash_screen.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
        title: 'Flutter',
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: <String, WidgetBuilder>{
          '/splash_screen': (BuildContext context) => new SplashScreen(),
        });
  }
}
