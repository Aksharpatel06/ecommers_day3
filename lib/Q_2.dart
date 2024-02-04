import 'package:ecommers_day3/utils/2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const app());
}
class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffEEEEEE),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: Icon(Icons.menu,color: Colors.white,),
            centerTitle: true,
            title: Text('Map',style: TextStyle(
              color: Colors.white,
            ),),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  list(name: l1[0]['name'],icon: l1[0]['icon']),
                  SizedBox(height: 10,),
                  list(name: l1[1]['name'],icon: l1[1]['icon']),
                  SizedBox(height: 10,),
                  list(name: l1[2]['name'],icon: l1[2]['icon']),
                  SizedBox(height: 10,),
                  list(name: l1[3]['name'],icon: l1[3]['icon']),
                  SizedBox(height: 10,),
                  list(name: l1[4]['name'],icon: l1[4]['icon']),
                  SizedBox(height: 10,),
                  list(name: l1[5]['name'],icon: l1[5]['icon']),
                  SizedBox(height: 10,),
                  list(name: l1[6]['name'],icon: l1[6]['icon']),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Widget list ({String? name,IconData? icon})
{
  return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
          child: Text(name!,style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          ),),
        ),
          Padding(
          padding: const EdgeInsets.all(8.0),
         child: Icon(icon),
       ),
      ],
    ),
  );
}