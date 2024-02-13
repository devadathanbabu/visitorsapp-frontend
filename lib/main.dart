import 'package:flutter/material.dart';
import 'package:securityvisitorapp/pages/menu.dart';

void main()
{
  runApp(HomePage());
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}
