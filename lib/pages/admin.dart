import 'package:flutter/material.dart';
import 'package:securityvisitorapp/pages/admindashboard.dart';
import 'package:securityvisitorapp/pages/securitylogin.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  TextEditingController txt1=new TextEditingController();
  TextEditingController txt2=new TextEditingController();
  void Login() async {
    String username = txt1.text;
    String pass = txt2.text;

    if (username == "admin" && pass == "123")
    {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ad_dashPage()));
    }
    else
      {
        print("invalid username or password");
      }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("VISITOR ENTRY APP",
        //     style: TextStyle(fontWeight: FontWeight.bold,
        //         color: Colors.white),),
        //   backgroundColor: Colors.black.withOpacity(0.9),
        // ),
          body:SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 150,),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage("https://www.shutterstock.com/image-vector/user-icon-vector-600nw-393536320.jpg"),
                  ),
                  SizedBox(height: 10,),
                  Text("ADMIN",
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 60,),
                  TextField(
                    controller: txt1,
                    decoration: InputDecoration(
                        hintText: "ID",
                        border: OutlineInputBorder(
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    obscureText: true,
                    controller: txt2,
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10)
                          )
                        ),
                          onPressed: Login, child: Text("Login"))),
                  SizedBox(height: 160,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back)),
                      // SizedBox(width: 20,),
                      Text("Back")
                    ],
                  )


                ],
              ),
            ),
          )
      ),

    );
  }
}
