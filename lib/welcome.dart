import 'package:flutter/material.dart';

import 'login_page.dart';
// import 'package:lenovo/login_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage('images/wel1.png')),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage('images/logo.png'),width: 130),
                  Row(
                    children: [
                      Text("B2B",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                      Text(" Lead",style:TextStyle(fontWeight: FontWeight.normal,fontSize: 28),)
                    ],
                  ),
                  Text("Qualification System",style:TextStyle(fontWeight: FontWeight.normal,fontSize:28),),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Access & Accept",style:TextStyle(fontWeight: FontWeight.bold,fontSize:13,color: Colors.grey),),
                      Text(" Leads from Multiple",style:TextStyle(fontWeight: FontWeight.normal,fontSize:13,color: Colors.grey),),
                    ],
                  ),
                  Text("Sources, Real Time!",style:TextStyle(fontWeight: FontWeight.normal,fontSize:13,color: Colors.grey),),
                ],
              ),
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[700],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: Icon(
          color: Colors.white,
          Icons.arrow_forward,
        ),
      ),
    );
  }
}
