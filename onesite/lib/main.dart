import 'package:flutter/material.dart';
import 'package:onesite/webMob/MobHome.dart';
import 'package:onesite/Responsive/responsive.dart';
import 'package:onesite/Website/Screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'One Spire',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: ResponsiveLayout(
            mobileScaffold: MHome(),
            desktopScaffold: HomePage(),
            tabletScaffold: HomePage()));
  }
}
