import 'package:flutter/material.dart';
import 'package:securityvisitorapp/service/visitorservice.dart';

class v_addPage extends StatefulWidget {
  const v_addPage({super.key});

  @override
  State<v_addPage> createState() => _v_addPageState();
}

class _v_addPageState extends State<v_addPage> {
  TextEditingController txt1=new TextEditingController();
  TextEditingController txt2=new TextEditingController();
  TextEditingController txt3=new TextEditingController();
  TextEditingController txt4=new TextEditingController();
  TextEditingController txt5=new TextEditingController();

  void addvisitor() async
  {
    final response=await visitorApiService().addVisitor(
        txt1.text,
        txt2.text,
        txt3.text,
        txt4.text,
        );
    if(response["status"]=="success")
      {
        print("successfully added");
      }
    else
      {
        print("Error");
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txt1,
                  decoration: InputDecoration(
                      hintText: "Enter Name",
                      labelText: "Name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(

                  controller: txt2,
                  decoration: InputDecoration(
                      hintText: "Enter Purpose",
                      labelText: "Purpose",
                      border: OutlineInputBorder()
                  ),
                ),

                SizedBox(height: 10,),
                TextField(
                  controller: txt3,
                  decoration: InputDecoration(
                      hintText: "Enter Address",
                      labelText: "Address",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: txt4,
                  decoration: InputDecoration(
                      hintText: "Enter phoneNo",
                      labelText: "phoneNo",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 30,),
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
                        onPressed: addvisitor,
                        child: Text("Add details"))),
                SizedBox(height: 60,),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Back to Login",
                  style: TextStyle(color: Colors.black),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
