import 'package:ecommers_day3/utils/2.dart';
import 'package:ecommers_day3/utils/3.dart';
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
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text('Icons',style: TextStyle(
              color: Colors.black,
            ),),
            elevation: 5,
            shadowColor: Colors.grey,
          ),
          body: Center(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      list(icon: l2[0]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l2[1]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l2[2]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l2[3]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l2[4]['icon']),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      list(icon: l3[0]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l3[1]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l3[2]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l3[3]['icon']),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      list(icon: l4[0]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l4[1]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l4[2]['icon']),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      list(icon: l5[0]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l5[1]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l5[2]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l5[3]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l5[4]['icon']),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      list(icon: l6[0]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l6[1]['icon']),
                      SizedBox(width: 10,),
                      list(icon: l6[2]['icon']),
                      SizedBox(width: 10,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget list({IconData? icon})
{
  return Container(
    margin: EdgeInsets.only(left: 10,top: 10),
    height: 130,
    width: 130,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey),
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          spreadRadius: 0.1,
          blurRadius: 0.1,
        )
      ],
      borderRadius: BorderRadius.circular(20),
    ),
    child: Icon(icon,size: 50,color: Colors.grey,),
  );
}