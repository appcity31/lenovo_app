import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login2.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin{
  bool _secure = true;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('images/logo.png'),width: 100,),
              SizedBox(height: 30,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                elevation: 5.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: TabBar(
                      labelColor: Colors.black,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      controller: _controller,padding: EdgeInsets.zero,
                      labelPadding: EdgeInsets.zero,
                      tabs: [
                        Container(width:200,child: Tab(child: Text("E-mail"),)),
                        Container(width:200,child: Tab(child: Text("Mobile no"),)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _controller,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 30,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('      E-mail',style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
                            TextField(
                              controller: _email,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(30)),
                                hintText: "Enter E-mail",
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 20,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('      Password',style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
                            TextField(
                              controller: _password,
                              obscureText: _secure,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(30)),
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
                          ],
                        ),

                        SizedBox(height: 80,),

                        Row(
                          children: [
                            Text("  Not registered yet ? ",style: TextStyle(fontSize: 15)),
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
                    ),

                    Phone(),
                  ],
                ),),

            ],
          ),
        ),
      ),
    );
  }
}
