import 'package:flutter/material.dart';
import 'package:securityvisitorapp/pages/admin.dart';
import 'package:securityvisitorapp/pages/securitylogin.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VISITOR ENTRY APP",
          style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.white),),
        backgroundColor: Colors.black.withOpacity(0.9),
      ),
      body: Container(
        padding: EdgeInsets.all(130),
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
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>AdminPage()));
              }, child: Text("Admin Login")),
            ),
            SizedBox(height: 10,),
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
                    (context)=>SecurityPage()));
              }, child: Text("Security Login")),
            ),

          ],
        ),
      ),
    );
  }
}
