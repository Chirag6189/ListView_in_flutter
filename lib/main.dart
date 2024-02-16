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

    //add data in list like photo,name,sub tital
    var profile_img = ['assets/images/p1.jpg','assets/images/p2.jpg','assets/images/p3.jpg','assets/images/p4.jpg','assets/images/p5.jpeg','assets/images/p6.jpeg','assets/images/p7.jpg','assets/images/p8.jpg','assets/images/p9.jpg','assets/images/p10.jpg'];
    var user_name = ["Chirag Jadhav","John Doe","Mike Johnson","Emily Davis","Jane Smith","Alex Turner","Sophie Wilson","Olivia Brown","Charlie Parker","Grace Miller"];
    var sub_tital = ["Java Developer","Software Developer","Marketing Specialist","Data Scientist","Graphic Designer","UX/UI Designer","Project Manager","Human Resources Manager","Mobile App Developer","Content Writer"];
    return MaterialApp(

      // for remove debug banner
      debugShowCheckedModeBanner: false,

      home: Scaffold(
          
          // aaplication app bar
          appBar: AppBar(
            title: Text("Employee List",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 67, 93, 229),
          ),

          backgroundColor: Color.fromARGB(255, 196, 217, 239),

          // app body
          body: ListView.separated(itemBuilder: (context, index) {
            
            // this is return list body in listView
            return ListTile(

              // for user_profile
              leading: Container(
                width: 60,
                height: 60,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                
                child: CircleAvatar(
                  backgroundImage: AssetImage(profile_img[index]),
                ),
          
              ),
              
              // for User_Name and sub_tital
              title: Text(user_name[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              subtitle: Text(sub_tital[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,),),
            
              // if i click in list then print name of user in console
              onTap: () {
                print(user_name[index]);
              },
            );

          // for list separator
          }, separatorBuilder: (context, index) {
            return Divider(thickness: 1,color: Colors.black,);
          },

          //for list item count
          itemCount: user_name.length,),
      ),
    );
  }
}
