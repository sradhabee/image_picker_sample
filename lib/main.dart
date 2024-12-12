import 'package:flutter/material.dart';
import 'package:image_picker_sample/view/home_screen/home_screen.dart';

void main(){
 runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}