import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Neumorphic App',
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: NeumorphicColors.background,
        defaultTextColor: Colors.grey,
        accentColor: Color(0xFF1ED760),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        // accentColor: Color(0xFF1ED760),
        accentColor: Colors.white,
        defaultTextColor: Colors.grey[400],
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: LoginScreen(),
    );
  }
}
