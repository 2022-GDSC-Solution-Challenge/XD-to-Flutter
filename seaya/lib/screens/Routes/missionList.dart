import 'package:flutter/material.dart';
import 'package:seaya/screens/Routes/Menu.dart';
import 'package:seaya/screens/Routes/login.dart';
import 'package:seaya/screens/Tabs/Sea.dart';

class missionList extends StatefulWidget {
  const missionList({Key? key}) : super(key: key);

  @override
  _missionListState createState() => _missionListState();
}

// ignore: camel_case_types
class _missionListState extends State<missionList>
    with SingleTickerProviderStateMixin {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SafeArea(
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: "Question 1",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: 'PTSansRegular',
                              ),
                              children: [
                                TextSpan(
                                  text: "/5",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'PTSansRegular',
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 65, 65, 65),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(17),
                            width: 350,
                            height: 500,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 240, 245),
                                borderRadius: BorderRadius.circular((25))),
                            child: Column(children: [
                              Text(
                                "세계환경의 날은 언제일까요?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'PTSansRegular',
                                ),
                              ),
                              SizedBox(height: 12),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "1. Test",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'PTSansRegular',
                                        ),
                                      ),
                                      Container(
                                        height: 23,
                                        width: 23,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                                color: Colors.black26)),
                                      )
                                    ]),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "1. Test",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'PTSansRegular',
                                        ),
                                      ),
                                      Container(
                                        height: 23,
                                        width: 23,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                                color: Colors.black26)),
                                      )
                                    ]),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "1. Test",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'PTSansRegular',
                                        ),
                                      ),
                                      Container(
                                        height: 23,
                                        width: 23,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                                color: Colors.black26)),
                                      )
                                    ]),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "1. Test",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'PTSansRegular',
                                        ),
                                      ),
                                      Container(
                                        height: 23,
                                        width: 23,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                                color: Colors.black26)),
                                      )
                                    ]),
                              ),
                            ]),
                          )
                        ])))
          ],
        ));
  }
}
