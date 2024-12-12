import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  XFile? selectedImageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          selectedImageFile!= null?   Image.file(File(selectedImageFile!.path)) : Icon(Icons.image),
          SizedBox(height: 30,),
        
          ElevatedButton(onPressed: ()async {
              final ImagePicker picker = ImagePicker();
              

 selectedImageFile = await picker.pickImage(source: ImageSource.gallery);
 setState(() {
   
 });
 if(selectedImageFile!=null){
print(selectedImageFile!.path);
 }
            
            
          }, child:Text("Add Image",style: TextStyle(color: Colors.black),))
        ],
      ),),
    );
  }
}