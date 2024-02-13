import 'package:flutter/material.dart';
import 'package:securityvisitorapp/service/securityservice.dart';

import '../model/securitymodel.dart';

class s_viewPage extends StatefulWidget {
  const s_viewPage({super.key});

  @override
  State<s_viewPage> createState() => _s_viewPageState();
}

class _s_viewPageState extends State<s_viewPage> {
  Future<List<Security>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=securityApiService().viewSecurity();
  }
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
        body: FutureBuilder(future: data, builder: (context,snapshot)
        {
          if(snapshot.hasData && snapshot.data!.isNotEmpty)
          {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (value,index)
                {
                  return Card(
                    child: Column(
                      children: [
                        ListTile(
                            title: Text("Name : " +snapshot.data![index].name.toString()),
                            subtitle: Text("EmpId : "+snapshot.data![index].empId.toString()
                              +"/n"+"Address :"+snapshot.data![index].address.toString()
                                +"/n"+"MobileNo :"+snapshot.data![index].mobileNo.toString()
                                +"/n"+"eMail :"+snapshot.data![index].eMail.toString()
                            )
                        )
                      ],
                    ),
                  );
                });
          }
          else
          {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 460,),
                CircularProgressIndicator(),
                Text("Loading")
              ],
            );
          }
        }),
      ),
    );
  }
}
