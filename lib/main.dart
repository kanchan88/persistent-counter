import 'package:agendaboacounter/screens/screen_1.dart';
import 'package:agendaboacounter/screens/screen_2.dart';
import 'package:agendaboacounter/screens/screen_3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda Boa Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedPage = 0;

  final counterPages = [
    Screen1(),
    Screen2(),
    Screen3()
  ];

  final _bottomNavigationBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.star, color: Colors.blue),
        label: "Screen 1",),
    const BottomNavigationBarItem(
        icon: Icon(Icons.star, color: Colors.green),
        label: "Screen 2"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.star, color: Colors.pink),
        label:"Screen 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: counterPages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        items: _bottomNavigationBarItems,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
        //type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
