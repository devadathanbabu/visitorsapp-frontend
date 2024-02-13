import 'package:flutter/material.dart';
import 'package:securityvisitorapp/pages/securityadd.dart';
import 'package:securityvisitorapp/pages/viewsecurity.dart';
import 'package:securityvisitorapp/pages/visitorview.dart';

class ad_dashPage extends StatefulWidget {
  const ad_dashPage({super.key});

  @override
  State<ad_dashPage> createState() => _ad_dashPageState();
}

class _ad_dashPageState extends State<ad_dashPage> {
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
            padding: EdgeInsets.all(110),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
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

                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => s_addPage()));
                  }, child: Text("Add Security")),
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

                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => s_viewPage()));
                  }, child: Text("View Security")),
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
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => v_viewPage()));
                  }, child: Text("View Visitor")),
                ),
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("back to login",
                style: TextStyle(color: Colors.black),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
