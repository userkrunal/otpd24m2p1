import 'dart:math';

import 'package:flutter/material.dart';
class OtpGenerator extends StatefulWidget {
  const OtpGenerator({Key? key}) : super(key: key);

  @override
  State<OtpGenerator> createState() => _OtpGeneratorState();
}

class _OtpGeneratorState extends State<OtpGenerator> {
  TextEditingController txtlen=TextEditingController();
  int num=0;
  int? a;
  int  d=0;
  void clean()
  {
    txtlen.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15172B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("OTP Generator",style: TextStyle(fontSize: 50,color: Color(0xffF6DB87)),),
            SizedBox(
              height: 10,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: txtlen,
                style: TextStyle(color: Color(0xffFCF6Ba),fontSize: 25),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter OTP Lenght.",hintStyle:TextStyle(color: Color(0xffFCF6BA)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffFCF6BA))),
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Random len =Random();

                num=int.parse(txtlen.text);
                setState(() {

                  a=len.nextInt(999999999-1000000000);
                });
              },
              child: Text(""),
            ),
              Container(
                height: 90,
                width: 400,
                alignment: Alignment.center,
                child: Text("Generate OTP",style: TextStyle(fontSize: 30,color: Color(0xff15172B)),),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffFFE8B8),Color(0xffF6DB87)],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                ),
              ),
            SizedBox(height: 20,),
            Container(
              height: 90,
               width: 400,
               alignment: Alignment.center,
               decoration: BoxDecoration(
                gradient: LinearGradient(
                   colors: [Color(0xffFFE8B8), Color(0xffF6DB87)],
                 ),
                 borderRadius: BorderRadius.circular(30),
               ),
               child: Center(child: Text("${(a == 0)? a: a.toString().substring(0,num)}",style: TextStyle(letterSpacing: 5,fontSize: 25,color: Color(0xff15172B)),)),
             ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                setState(() {
                  a=0;
                });
              },
              child: Container(
                height: 30,
                width: 150,
                alignment: Alignment.center,
                child: Text("Reset",style: TextStyle(fontSize: 20,color: Color(0xff15172B)),),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffFFE8B8), Color(0xffF6DB87)],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
