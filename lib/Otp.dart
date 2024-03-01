import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import 'home_page.dart';


class Otp extends StatelessWidget {

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 60,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Colors.black,
    ),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(50),
      border: Border.all(color: Colors.transparent),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("OTP"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Center(child: Image(image: AssetImage('images/otp.png'))),

              SizedBox(height: 35,),

              Container(
                margin:  EdgeInsets.fromLTRB(12, 0, 0, 25),
                child:
                Text(
                  'Verification code',
                  style:  TextStyle (
                    fontSize:  24,
                    fontWeight:  FontWeight.w500,
                    letterSpacing:  0.12,
                    color:  Color(0xff000000),
                  ),
                ),
              ),

              Container(
                // wehavesandotpcodeverificationt (37:3928)
                margin:  EdgeInsets.fromLTRB(13, 0, 0, 40),
                constraints:  BoxConstraints (
                  maxWidth:  303,
                ),
                child: Text(
                  'We have sand  OTP code verification \nto your mobile no ',
                  textAlign:  TextAlign.center,
                  style:  TextStyle (
                    fontSize:  16,
                    fontWeight:  FontWeight.w500,
                    letterSpacing:  0.08,
                    color:  Color(0xff959595),
                  ),
                ),
              ),

              Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(color: Colors.green),
                  ),
                ),
                onCompleted: (pin) => debugPrint(pin),
              ),

              SizedBox(height: 50,),

              Text("Resend OTP",style: TextStyle(color: Colors.blue),),

              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width*100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    ) ;
  }
}
