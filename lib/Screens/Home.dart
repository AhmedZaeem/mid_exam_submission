import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbarTitle'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              print(_index);
            },
            child: Text("Hello")),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (tappedItemIndex) => setState(() {
          _index = tappedItemIndex;
        }),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.av_timer), label: 'navBarItem1Text'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add), label: 'navBarItem2Text'),
        ],
      ),
    );
  }
}
