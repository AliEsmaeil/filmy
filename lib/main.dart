import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      themeAnimationCurve: Curves.easeIn,
      themeAnimationDuration: Duration(seconds: 1),
    );
  }
}
