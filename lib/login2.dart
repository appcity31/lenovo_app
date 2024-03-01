import 'package:flutter/material.dart';

import 'Otp.dart';
import 'home_page.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  bool _secure = false;

  TextEditingController _password = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _countrycode = TextEditingController();
  @override
  void initState() {
    _countrycode.text = '+91';
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(height: 50,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('      Phone no..',style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: _countrycode,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Text(
                    "|",
                    style: TextStyle(fontSize: 33, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                        controller: _phone,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone",
                        ),
                      )),

                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 40,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('      Password',style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                controller: _password,
                obscureText: _secure,
                decoration: InputDecoration(
                  prefix: SizedBox(width: 30,),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: (_secure)? Icon(Icons.remove_red_eye_sharp) : Icon(Icons.remove_red_eye_outlined),
                    onPressed: () {
                      setState((){
                        _secure = !_secure;
                      });
                    },
                  ),
                  hintText: "Enter Password",
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 50,),

        InkWell(onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp()));
        },child: Text("Login using OTP",style: TextStyle(color: Colors.blue,fontSize: 15),)),
        SizedBox(height: 30,),
        Row(
          children: [
            Text("Not registered yet ? ",style: TextStyle(fontSize: 15)),
            Text("Request an account",style: TextStyle(fontSize: 15,color: Colors.blue),)
          ],
        ),

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
    );
  }
}
