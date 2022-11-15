import 'package:crypto/home_page.dart';
import 'package:crypto/serach_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.black),
          appBarTheme: AppBarTheme(
              elevation: 1,
              color: Colors.white,
              iconTheme: IconThemeData(color: Colors.black)),
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: RootApp(),
    );
  }
}

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPage == 1 ? SearchPage() : HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(children: [
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  _currentPage = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color: _currentPage == 0 ? Colors.pink : Colors.black,
              )),
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  _currentPage = 1;
                });
              },
              icon: Icon(
                Icons.search,
                color: _currentPage == 1 ? Colors.pink : Colors.black,
              )),
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  _currentPage = 2;
                });
              },
              icon: Icon(
                Icons.ondemand_video,
                color: _currentPage == 2 ? Colors.pink : Colors.black,
              )),
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  _currentPage = 3;
                });
              },
              icon: Icon(
                Icons.card_travel,
                color: _currentPage == 3 ? Colors.pink : Colors.black,
              )),
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  _currentPage = 4;
                });
              },
              icon: Icon(
                Icons.person,
                color: _currentPage == 4 ? Colors.pink : Colors.black,
              )),
          Spacer()
        ]),
      ),
    );
  }
}
