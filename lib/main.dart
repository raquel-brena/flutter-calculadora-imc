import 'package:flutter/material.dart';
import 'package:mini_projeto_01/form/FormApp.dart';
import 'package:mini_projeto_01/grid/grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          backgroundColor: Colors.blueGrey,
          title:  Text("Application", style: TextStyle(color: Colors.white),),  
          actions: [
            IconButton(icon: Icon(Icons.more_vert, color: Colors.white,), onPressed: () {  },)
          ],
        ), 
        body: const Center(
          child: FormApp(),
        ),
      )
    );
  }
}