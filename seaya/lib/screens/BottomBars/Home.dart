import 'package:flutter/material.dart';
import 'package:seaya/screens/Routes/Menu.dart';
import 'package:seaya/screens/Routes/login.dart';
import 'package:seaya/screens/Tabs/Sea.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

// ignore: camel_case_types
class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 354,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Image(
                        width: 53.0,
                        image: AssetImage(
                          'images/seaya_logo.png',
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text("Seaya",
                          style: TextStyle(
                              color: Color(0xff02171a),
                              fontFamily: 'PTSansRegular',
                              letterSpacing: 2.5,
                              fontSize: 15.0),
                          textAlign: TextAlign.left),
                      const SizedBox(
                        width: 180.0,
                      ),
                      IconButton(
                          icon: const Icon(
                            Icons.menu,
                            size: 26,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Menu()),
                            );
                          }),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 41,
                width: 270,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(52, 156, 192, 211),
                        spreadRadius: 0,
                        blurRadius: 5),
                  ],
                  color: Color.fromARGB(255, 219, 231, 240),
                  borderRadius: BorderRadius.circular(
                    30.0,
                  ),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 219, 231, 240), width: 4),
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                    color: Colors.white,
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 13.0,
                    fontFamily: 'PTSansRegular',
                  ), //For Selected tab
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 13.0,
                    fontFamily: 'PTSansRegular',
                  ), //For Un-selected Tabs
                  labelColor: Colors.black,
                  unselectedLabelColor: const Color(0xff575757),
                  tabs: const [
                    Tab(
                      text: 'Sea',
                    ),
                    Tab(
                      text: 'News',
                    ),
                    Tab(
                      text: 'Campaign',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Center(
                      child: Text(
                        'Sea',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'PTSansRegular',
                        ),
                      ),
                    ),
                    Center(
                      child: Expanded(
                        child: ListView(
                          padding: const EdgeInsets.all(0.0),
                          children: [
                            SizedBox(height: 10),
                            Container(
                              height: 205,
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 35,
                                      child: Material(
                                        child: Container(
                                          height: 160.0,
                                          width: width * 0.91,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    offset:
                                                        const Offset(-1.0, 1.0),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 1.0),
                                              ]),
                                        ),
                                      )),
                                  Positioned(
                                    top: 0,
                                    left: 10,
                                    child: Card(
                                      elevation: 10.0,
                                      shadowColor: Colors.grey.withOpacity(0.5),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Container(
                                        height: 180,
                                        width: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          image: const DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(""),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 50,
                                      left: 160,
                                      child: Container(
                                        height: 150,
                                        width: 180,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "Title",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color.fromARGB(
                                                        255, 37, 83, 182),
                                                    fontFamily: 'PTSansBold'),
                                              ),
                                              Text(
                                                "Date, Name",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey,
                                                    fontFamily:
                                                        'PTSansRegular'),
                                              ),
                                              Divider(
                                                color: Colors.black,
                                              ),
                                              Text(
                                                "content of the article",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 68, 68, 68),
                                                    fontFamily: 'PTSansBold'),
                                              ),
                                            ]),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              height: 205,
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 35,
                                      child: Material(
                                        child: Container(
                                          height: 160.0,
                                          width: width * 0.91,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    offset:
                                                        const Offset(-1.0, 1.0),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 1.0),
                                              ]),
                                        ),
                                      )),
                                  Positioned(
                                    top: 0,
                                    left: 10,
                                    child: Card(
                                      elevation: 10.0,
                                      shadowColor: Colors.grey.withOpacity(0.5),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Container(
                                        height: 180,
                                        width: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          image: const DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(""),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 50,
                                      left: 160,
                                      child: Container(
                                        height: 150,
                                        width: 180,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "Title",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color.fromARGB(
                                                        255, 37, 83, 182),
                                                    fontFamily: 'PTSansBold'),
                                              ),
                                              Text(
                                                "Date, Name",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey,
                                                    fontFamily:
                                                        'PTSansRegular'),
                                              ),
                                              Divider(
                                                color: Colors.black,
                                              ),
                                              Text(
                                                "content of the article",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(
                                                        255, 68, 68, 68),
                                                    fontFamily: 'PTSansBold'),
                                              ),
                                            ]),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              height: 205,
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 35,
                                      child: Material(
                                        child: Container(
                                          height: 160.0,
                                          width: width * 0.91,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                    offset:
                                                        const Offset(-1.0, 1.0),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 1.0),
                                              ]),
                                        ),
                                      )),
                                  Positioned(
                                    top: 0,
                                    left: 10,
                                    child: Card(
                                      elevation: 10.0,
                                      shadowColor: Colors.grey.withOpacity(0.5),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Container(
                                        height: 180,
                                        width: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          image: const DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(""),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 50,
                                      left: 160,
                                      child: Container(
                                        height: 150,
                                        width: 180,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "Title",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color.fromARGB(
                                                        255, 37, 83, 182),
                                                    fontFamily: 'PTSansBold'),
                                              ),
                                              Text(
                                                "Date, Name",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey,
                                                    fontFamily:
                                                        'PTSansRegular'),
                                              ),
                                              Divider(
                                                color: Colors.black,
                                              ),
                                              Text(
                                                "content of the article",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromARGB(
                                                      255, 68, 68, 68),
                                                  fontFamily: 'PTSansBold',
                                                ),
                                              ),
                                            ]),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Campaign',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'PTSansRegular',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
