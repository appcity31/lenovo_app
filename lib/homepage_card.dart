import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HCard extends StatelessWidget {
  const HCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Card(
          child: Container(
            // margin: EdgeInsets.fromLTRB(0, 0, 0, 430),
            padding: EdgeInsets.fromLTRB(0, 23, 0, 22),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffdbe3ed),
                  offset: Offset(3, 3),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // autogroupt4tpbZX (KS2ejLmtqqarXD1F39T4TP)
                  margin: EdgeInsets.fromLTRB(17, 0, 21, 0),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // KkR (27:935)
                        margin: EdgeInsets.fromLTRB(0, 0, 44, 6),
                        child: Text(
                          '\$ 200,000',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            height: 1.2175,
                            color: Color(0xff1e0013),
                          ),
                        ),
                      ),
                      Container(
                        // tagRYZ (27:1428)
                        padding:
                        EdgeInsets.fromLTRB(11.5, 6, 11.5, 5),
                        width: 106,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color(0xffe1251b),
                          borderRadius: BorderRadius.circular(1),
                        ),
                        child: Container(
                          // textL9j (I27:1428;101:205)
                          width: double.infinity,
                          height: double.infinity,
                          child: Center(
                            child: Text(
                              '16 NEW LEADS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                height: 1.2175,
                                letterSpacing: 0.5,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:  EdgeInsets.fromLTRB(0, 0, 0, 6),
                          child: Text(
                            '1050',
                            style: TextStyle(
                              fontSize:  20,
                              fontWeight:  FontWeight.w700,
                              height:  1.2175,
                              color:  Color(0xff1e0013),
                            ),
                          ),
                        ),
                        Text(
                          // totalleads2YV (27:1434)
                          'Total Leads',
                          style:  TextStyle (
                            fontSize:  12,
                            fontWeight:  FontWeight.w400,
                            height:  1.2175,
                            color:  Color(0xff4e444e),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:  EdgeInsets.fromLTRB(0, 0, 0, 6),
                          child: Text(
                            '750',
                            style: TextStyle(
                              fontSize:  20,
                              fontWeight:  FontWeight.w700,
                              height:  1.2175,
                              color:  Color(0xff1e0013),
                            ),
                          ),
                        ),
                        Text(
                          // totalleads2YV (27:1434)
                          'Actioned Leads',
                          style:  TextStyle (
                            fontSize:  12,
                            fontWeight:  FontWeight.w400,
                            height:  1.2175,
                            color:  Color(0xff4e444e),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:  EdgeInsets.fromLTRB(0, 0, 0, 6),
                          child: Text(
                            '75%',
                            style: TextStyle(
                              fontSize:  20,
                              fontWeight:  FontWeight.w700,
                              height:  1.2175,
                              color:  Color(0xff1e0013),
                            ),
                          ),
                        ),
                        Text(
                          // totalleads2YV (27:1434)
                          'Action Rate',
                          style:  TextStyle (
                            fontSize:  12,
                            fontWeight:  FontWeight.w400,
                            height:  1.2175,
                            color:  Color(0xff4e444e),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),

        SizedBox(
          height: 40,
        ),

        Container(
          // autogroupzanzuPK (XoiR82xb8cExXnxfn8ZANZ)
          margin:  EdgeInsets.fromLTRB(12, 0, 20, 12),
          width:  double.infinity,
          child:
          Row(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children:  [
              Container(
                // followupleadsS8M (27:1476)
                margin:  EdgeInsets.fromLTRB(0, 0, 129, 0),
                child:
                Text(
                  'Follow up Leads',
                  style:  TextStyle (
                    fontSize:  16,
                    fontWeight:  FontWeight.w500,
                    height:  1.2175,
                    color:  Color(0xff1e0013),
                  ),
                ),
              ),
              Text(
                // viewallYSH (43:15862)
                'View all',
                style:  TextStyle (
                  fontSize:  14,
                  fontWeight:  FontWeight.w500,
                  height:  1.2175,
                  color:  Color(0xffe1251b),
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: Card(
            elevation: 10,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index){
                return Positioned(
                  // frame521918PF (28:3742)
                  left:  0,
                  top:  10,
                  child:
                  Container(
                    padding:  EdgeInsets.fromLTRB(20, 8, 5, 0),
                    width:  343,
                    height:  102,
                    decoration:  BoxDecoration (
                      color:  Color(0xffffffff),
                    ),
                    child:
                    Container(
                      // group4273194842Dj (28:3741)
                      width:  double.infinity,
                      height:  double.infinity,
                      child:
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children:  [
                          Container(
                            // autogroupaofjN2h (XoiTeTkc1Ko3bamEigaofj)
                            margin:  EdgeInsets.fromLTRB(0, 0, 0, 6),
                            width:  double.infinity,
                            height:  54,
                            child:
                            Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // autogroupujpht13 (XoiTki5CHjwF6YfCxVUjpH)
                                  height:  double.infinity,
                                  child: Column(
                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                    children:  [
                                      Container(
                                        // mat2023ADT (28:3723)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 0, 4),
                                        child:
                                        Text(
                                          '3 Mat 2023',
                                          style:  TextStyle (
                                            fontSize:  12,
                                            fontWeight:  FontWeight.w400,
                                            height:  1.2175,
                                            color:  Color(0xff4e444e),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // hashconnectintegratedservicepv (27:3721)
                                        constraints:  BoxConstraints (
                                          maxWidth:  242,
                                        ),
                                        child:
                                        Text(
                                          'Hash Connect Integrated Service Pvt Ltd.',
                                          style:  TextStyle (
                                            fontSize:  14,
                                            fontWeight:  FontWeight.w700,
                                            height:  1.2175,
                                            color:  Color(0xff1e0013),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: CircleAvatar(
                                    radius: 19,
                                    backgroundColor: Color(0xff294E95),
                                    child: IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.phone,color: Colors.white,),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            // group427319483ne9 (28:3739)
                            width:  double.infinity,
                            child: Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // group427319482JsP (28:3738)
                                  margin:  EdgeInsets.fromLTRB(0, 0 ,8, 0),
                                  width:  16,
                                  height:  16,
                                  child:Icon(
                                    Icons.person_outline_outlined,
                                  )
                                ),
                                Text(
                                  // vinodkumarnnZ (28:3722)
                                  'Vinod Kumar',
                                  style:  TextStyle (
                                    fontSize:  14,
                                    fontWeight:  FontWeight.w400,
                                    height:  1.2175,
                                    color:  Color(0xff1e0013),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Divider(color: Colors.grey[300],),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
