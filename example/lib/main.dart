import 'package:flutter/material.dart';
import 'package:number_extension/number_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Example"),
          ),
          body: Column(
            children: [
              //For getting result in International System Counting System
              //eg. Million, Billion, etc
              Text(
                NumberExtension.internationSystem(100000),
              ),
              //For getting result in Indian Counting System
              //eg. Lac, Crore, etc
              Text(
                NumberExtension.indianSystem(100000),
              ),
              //For Controlling the decimal point after result
              //eg. 1.2 Lac, 1.25 Lac, etc
              Text(
                NumberExtension.indianSystem(100000),
              ),
              Text(
                NumberExtension.indianSystem(100000, numbersAfterPoint: 2),
              ),
            ],
          ),
        ));
  }
}
