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
    var profile_img = ['assets/images/p1.jpg','assets/images/p2.jpg','assets/images/p3.jpg','assets/images/p4.jpg','assets/images/p5.jpeg','assets/images/p6.jpeg','assets/images/p7.jpg','assets/images/p8.jpg','assets/images/p9.jpg','assets/images/p10.jpg'];
    var user_name = ["Chirag Jadhav","John Doe","Mike Johnson","Emily Davis","Jane Smith","Alex Turner","Sophie Wilson","Olivia Brown","Charlie Parker","Grace Miller"];
    var sub_tital = ["Java Developer","Software Developer","Marketing Specialist","Data Scientist","Graphic Designer","UX/UI Designer","Project Manager","Human Resources Manager","Mobile App Developer","Content Writer"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Employee List",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 67, 93, 229),
          ),

          body: ListView.separated(itemBuilder: (context, index) {
            return ListTile(

            );

          }, separatorBuilder: (context, index) {
            return Divider(thickness: 1,);
          },
          itemCount: user_name.length,),
      ),
    );
  }
}
