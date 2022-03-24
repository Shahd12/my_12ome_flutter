import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'SECOND ASIGNMENT'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(color: Colors.red),
      drawer: Drawer(
        child: ListView(
          screenHight >= 220 && screenWidth >= 1280,
          padding: EdgeInsets.zero,
          children: [
            // const DrawerHeader(
            //   child: Text(''),
            // ),
            ListTile(
              title: const Text('FIRST ELEMENT'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('SECOND ELEMENT'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('THERD ELEMENT'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('FORTH ELEMENT'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('FIFTHE ELEMENT'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );

    // return Scaffold(
    //   drawer: Drawer(
    //     child: Column(children: [
    //       DrawerHeader(
    //           child: Container(
    //         color: Colors.red,
    //       ))
    //     ]),
    //   ),
    // );
  }
}
