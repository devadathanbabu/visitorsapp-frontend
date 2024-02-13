import 'package:flutter/material.dart';
import 'package:securityvisitorapp/pages/visitoradd.dart';

class s_menuPage extends StatefulWidget {
  const s_menuPage({super.key});

  @override
  State<s_menuPage> createState() => _s_menuPageState();
}

class _s_menuPageState extends State<s_menuPage> {
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
            padding: EdgeInsets.all(140),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 170,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=>v_addPage())
                    );
                  }, child: Text("Add Visitor")),
                ),
                SizedBox(height: 100,),
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
