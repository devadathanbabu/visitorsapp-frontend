import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:securityvisitorapp/pages/securitymenu.dart';
import 'package:securityvisitorapp/service/securityservice.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  TextEditingController txt1=new TextEditingController();
  TextEditingController txt2=new TextEditingController();


  void loginsecurity()async{
    final response=await securityApiService().login(
        txt1.text,
        txt2.text);
    if(response["status"]=="success")
      {
        print("Login Successfull");

        Navigator.push(context, MaterialPageRoute(builder:
            (context)=>s_menuPage())
        );
      }
    else if(response["status"]=="invalid user")
    {
      print("invalid user");

    }
    else
      {
        print("invalid password");
      }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("VISITOR ENTRY APP",
            style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.white),),
          backgroundColor: Colors.black.withOpacity(0.9),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                Column(
          
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 160,),
                    Text(
                      "Email",
                    ),
                    TextField(
                      controller: txt1,
                      decoration: InputDecoration(
                          hintText: "Enter your eMail",
                          border: OutlineInputBorder(
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Password",
                    ),
                    TextField(
                      controller: txt2,
                      // obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        // suffixIcon: Icon(CupertinoIcons.eye_fill),
                        border: OutlineInputBorder(
                        ),
                      ),
                    ),
          
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(CupertinoIcons.square),
                    SizedBox(width: 10,),
                    Text("Remember me"),
                    SizedBox(width: 93,),
                    Text("Forgot Password")
                  ],
                ),
          
                SizedBox(height: 40,),
                SizedBox(
                  width: 600,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      onPressed: loginsecurity, child: Text("Login")),
                ),
                SizedBox(height: 10,),
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
        ),
      ),
    );
  }
}
