import 'package:flutter/material.dart';
import 'package:securityvisitorapp/model/visitormodel.dart';
import 'package:securityvisitorapp/service/visitorservice.dart';

class v_viewPage extends StatefulWidget {
  const v_viewPage({super.key});

  @override
  State<v_viewPage> createState() => _v_viewPageState();
}

class _v_viewPageState extends State<v_viewPage> {
  Future<List<Visitor>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=visitorApiService().viewVisitor();
  }
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
                            subtitle: Text("EmpId : "+snapshot.data![index].purpose.toString()
                                +"\n"+"Address :"+snapshot.data![index].address.toString()
                                +"\n"+"MobileNo :"+snapshot.data![index].phoneNo.toString()
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
