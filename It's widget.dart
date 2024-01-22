import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {

  double t=0,l=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Positioned(top: 100,bottom: 100,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(11)
              ),
            ),
          ),
          //Positioned(top: 100,bottom: 550,child: Container(color: Colors.red,height: 50,width: 50,)),
          //Positioned(top: 100,bottom: 550,left: 450,child: Container(color: Colors.red,height: 50,width: 50,)),
          //Positioned(top: 100+450,bottom: 100,left: 200,child: Container(color: Colors.red,height: 50,width: 50,)),
          for(double j=100;j<=550;j+=50)
            for(double i=0;i<=450;i+=50)
              Positioned(top: j,left:i,child: Container(decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,width: 2
                  ),color: Colors.red
              ),height: 50,width: 50,)),
          Positioned(top: 212,left: 312,child: Icon(Icons.star))

        ],
      ),
    );
  }
}
