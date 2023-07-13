import 'package:ahmed_el_zaeem/Helpers/NavigationHelper.dart';
import 'package:ahmed_el_zaeem/Screens/Home.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> with NavigationHelper {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),
        () => jump(context: context, to: const Home(), replace: true));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
