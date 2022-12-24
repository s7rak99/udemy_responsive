import 'dart:io';

import 'package:flutter/material.dart';
import 'package:null_safty_ex/Mobile.dart';

import 'Desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Builder(
        builder: (context) {

          if (MediaQuery.of(context).size.width.toInt() <= 560) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 0.7,
                ),
                child: const MobileScreen());
          }
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.2,
              ),
              child: const DesktopScreen());
        },
      ),
    );
  }
}

/*
 * LayoutBuilder(builder: (context, constraints){
        // print(constraints.minWidth.toInt());
        if(constraints.minWidth.toInt() > 560) {
          return const DesktopScreen();
        }
        else{
          return const MobileScreen();
        }
      }),
 * **/
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String text = 'sahar';
  late String text1;
  String? text2;

  @override
  Widget build(BuildContext context) {
    text = 'null';
    text1 = 'null';
    text2 = 'null';
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            Text(text1),
            Text(text2 ?? ''),
          ],
        ),
      ),
    );
  }
}
