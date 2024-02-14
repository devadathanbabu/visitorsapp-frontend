import 'package:flutter/material.dart';
import 'package:securityvisitorapp/service/securityservice.dart';

class s_addPage extends StatefulWidget {
  const s_addPage({super.key});

  @override
  State<s_addPage> createState() => _s_addPageState();
}

class _s_addPageState extends State<s_addPage> {
  TextEditingController txt1=new TextEditingController();
  TextEditingController txt2=new TextEditingController();
  TextEditingController txt3=new TextEditingController();
  TextEditingController txt4=new TextEditingController();
  TextEditingController txt5=new TextEditingController();
  TextEditingController txt6=new TextEditingController();


  void addsecurity() async{
    final response=await securityApiService().sendData(
    txt1.text,
    txt2.text,
    txt3.text,
    txt4.text,
    txt5.text,
    txt6.text);
        if(response["status"]=="success")
          {
            print("Successfully added");
          }
        else
          {
            print("error");
          }
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              keyboardType: TextInputType.number,
              controller: txt2,
              decoration: InputDecoration(
                  hintText: "Enter EmpId",
                  labelText: "EmpId",
                  border: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 10,),
            TextField(
              controller: txt3,
              decoration: InputDecoration(
                  hintText: "Enter Adress",
                  labelText: "Adress",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.number,
              controller: txt4,
              decoration: InputDecoration(
                  hintText: "Enter MobileNo",
                  labelText: "MobileNo",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txt5,
              decoration: InputDecoration(
                  hintText: "Enter eMail",
                  labelText: "eMail",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txt6,
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
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
                    onPressed: addsecurity,
                    child: Text("Add details"))),
            SizedBox(height: 60,),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Back to menu",
              style: TextStyle(color: Colors.black),))
          ],
        ),
      ),
    );
  }
}
