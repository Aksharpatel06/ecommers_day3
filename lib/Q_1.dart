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
            backgroundColor: Color(0xff54759E),
            leading: Icon(Icons.menu,color: Colors.white,),
            centerTitle: true,
            title: Text('Calculater',style: TextStyle(
              color: Colors.white,
            ),),
          ),
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$count',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        splashColor: Colors.grey,
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('-2',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            count-=2;
                          });
                        },
                      ),
                      InkWell(
                        splashColor: Colors.grey,
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('+2',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            count+=2;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          splashColor: Colors.grey,
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('-4',style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              count-=4;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          splashColor: Colors.grey,
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('+4',style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              count+=4;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    splashColor: Colors.grey,
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('clear',style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        count=0;
                      });
                    },
                  ),
                ],
              ),
          ),
          ),
        ),
    );
  }
}
int count =0;