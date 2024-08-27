import 'package:flutter/material.dart';
import 'package:open_file_windows/open_file_windows.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _openFileWindowsPlugin = OpenFileWindows();
  String _result = "click to open file";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: GestureDetector(child: Text(_result),onTap: ()async{
           final resultType = await _openFileWindowsPlugin.open("F:\\example.txt");
            
            setState(() {
              _result = resultType.message;
            });
          },),
        ),
      ),
    );
  }
}
