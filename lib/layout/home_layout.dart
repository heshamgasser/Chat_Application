import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
 static const String routeName = 'Home Layout';

  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
     decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/image/background.png'), fit: BoxFit.fill),
     ),
      child: Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
       ),
      ),
    );
  }
}
