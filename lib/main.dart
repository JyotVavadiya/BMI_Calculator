import 'dart:async';

import 'package:bmi_calcilator/screen/bmi_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splesh(),
    ),
  );
}

class Splesh extends StatefulWidget {
  const Splesh({Key? key}) : super(key: key);

  @override
  State<Splesh> createState() => _SpleshState();
}

class _SpleshState extends State<Splesh> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Bmi_Page(),
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272c4f),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image(image: AssetImage("assets/img/1.png"),height: 600,),
                  ),
                  SizedBox(height: 20,),
                  const Text("BMI CALCULATOR", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: Colors.white
                  ),)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: const [
                CircularProgressIndicator(
                  strokeWidth: 4,
                  color: Color(0xfff90363),
                ),
                SizedBox(height: 10),
                Text(
                  "Check your BMI",
                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
