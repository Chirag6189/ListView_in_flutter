import 'package:flutter/material.dart';
void main(){
  runApp(My_app());
}

class My_app extends StatefulWidget {
  const My_app({super.key});

  @override
  State<My_app> createState() => _My_appState();
}

class _My_appState extends State<My_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Employee List",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 67, 93, 229),

          ),
      ),
    );
  }
}
