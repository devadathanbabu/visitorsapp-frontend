import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menu1Page extends StatefulWidget {
  const menu1Page({super.key});

  @override
  State<menu1Page> createState() => _menu1PageState();
}

class _menu1PageState extends State<menu1Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back,color: Colors.white,)),
          title: Text("VISITOR ENTRY APP",
            style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.white),),
          backgroundColor: Colors.black.withOpacity(0.9),
        ),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            print(index);
          },
          items: [

            BottomNavigationBarItem(
                icon: Icon(Icons.add),
              label: "Add Post"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_quilt_outlined),
              label: "View All"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
            label: "Profile"
            )
          ],
        ),

      ),
    );
  }
}
