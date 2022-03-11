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
                    //메인화면 탭
                    Center(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 2.5,
                            child: Card(
                              elevation: 5.0,
                              shadowColor: Colors.grey.withOpacity(0.4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 540,
                                width: 340,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 25,
                            left: 22.5,
                            child: Card(
                              elevation: 3.0,
                              shadowColor: Colors.grey.withOpacity(0.4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                height: 45,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 3),
                                  child: Row(children: [
                                    //사용자 이름
                                    Text(
                                      "YoonJin",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontFamily: 'PTSansRegular'),
                                    ),
                                    SizedBox(
                                      width: 160,
                                    ),
                                    //상위 몇 퍼센트 인지
                                    Text(
                                      "Top 30%",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontFamily: 'PTSansRegular'),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ),
                          //기여도 -> 총 점수 10점 당 0.2%씩 증가 (ex. 총점수 72, 기여도 1.4%)
                          Positioned(
                            top: 29,
                            left: 32,
                            child: Container(
                              padding: const EdgeInsets.only(left: 60, top: 70),
                              child: Column(children: [
                                Text(
                                  "1.4 %",
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: Color(0xff0068C1),
                                      fontFamily: 'PTSansRegular'),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  " the view of the sea \n has been expanded.",
                                  style: TextStyle(
                                      fontSize: 17,
                                      letterSpacing: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontFamily: 'PTSansRegular'),
                                ),
                              ]),
                            ),
                          ),
                          //메인 배경 이미지
                          Stack(
                            children: [
                              Positioned(
                                  top: 202,
                                  left: 50,
                                  child: Container(
                                    child: Image(
                                      width: 240.0,
                                      image: AssetImage(
                                        'images/circle.png',
                                      ),
                                    ),
                                  )),
                              //북극곰 이미지
                              Positioned(
                                  top: 261,
                                  left: 113,
                                  child: Container(
                                    child: Image(
                                      width: 115.0,
                                      image: AssetImage(
                                        'images/mainImage.png',
                                      ),
                                    ),
                                  )),
                              Positioned(
                                top: 234,
                                left: 55,
                                child: Container(
                                  padding: const EdgeInsets.only(top: 100),
                                  width: 70.0,
                                  height: 70.0,
                                  decoration: new BoxDecoration(
                                    color: Color.fromARGB(255, 118, 200, 241),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              // 총 점수
                              Positioned(
                                top: 243,
                                left: 72.5,
                                child: Column(
                                  children: [
                                    Text(
                                      "Total",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontFamily: 'PTSansRegular'),
                                    ),
                                    Text(
                                      "72",
                                      style: TextStyle(
                                          fontSize: 32,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontFamily: 'PTSansRegular'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          Positioned(
                            top: 460,
                            left: 22.5,
                            child: Card(
                              elevation: 3.0,
                              shadowColor: Colors.grey.withOpacity(0.4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 75,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 28, top: 3),
                                  child: Row(children: [
                                    //퀴즈 점수
                                    Container(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Quiz",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontFamily: 'PTSansRegular'),
                                          ),
                                          Text(
                                            "12",
                                            style: TextStyle(
                                                fontSize: 28,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontFamily: 'PTSansRegular'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 24.5,
                                    ),
                                    Container(
                                      width: 1,
                                      height: 35,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 24.5,
                                    ),
                                    //뉴스&켐페인 점수
                                    Container(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Column(
                                        children: [
                                          Text(
                                            "News / Campaign",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontFamily: 'PTSansRegular'),
                                          ),
                                          Text(
                                            "27",
                                            style: TextStyle(
                                                fontSize: 28,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontFamily: 'PTSansRegular'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 24.5,
                                    ),
                                    Container(
                                      width: 1,
                                      height: 35,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 24.5,
                                    ),
                                    //미션 점수
                                    Container(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Mission",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontFamily: 'PTSansRegular'),
                                          ),
                                          Text(
                                            "33",
                                            style: TextStyle(
                                                fontSize: 28,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontFamily: 'PTSansRegular'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //뉴스 탭
                    Center(
                      child: Expanded(
                        child: ListView(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 10, top: 25),
                              height: 130,
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 67, 101, 175),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(65.0),
                                        topRight: Radius.circular(10),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color.fromARGB(255, 85, 150, 194),
                                          Color.fromARGB(255, 43, 145, 204),
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                    255, 124, 130, 180)
                                                .withOpacity(0.3),
                                            offset: Offset(-8.0, 8.0),
                                            blurRadius: 8.0,
                                            spreadRadius: 4.0)
                                      ]),
                                  padding: const EdgeInsets.only(
                                    left: 25,
                                    top: 20.0,
                                    bottom: 0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Date",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 1.5,
                                            height: 11,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 11.5,
                                          ),
                                          Text(
                                            "Publisher",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5, right: 20),
                                        child: Column(children: [
                                          Text(
                                            "Title ...",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          )
                                        ]),
                                      )
                                    ],
                                  )),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 10, top: 10),
                              height: 130,
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 86, 106, 150),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(65.0),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color.fromARGB(255, 87, 124, 206),
                                          Color.fromARGB(255, 90, 133, 190),
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                    255, 124, 130, 180)
                                                .withOpacity(0.3),
                                            offset: Offset(-8.0, 8.0),
                                            blurRadius: 8.0,
                                            spreadRadius: 4.0)
                                      ]),
                                  padding: const EdgeInsets.only(
                                    left: 25,
                                    top: 20.0,
                                    bottom: 0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Date",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 1.5,
                                            height: 11,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 11.5,
                                          ),
                                          Text(
                                            "Publisher",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5, right: 20),
                                        child: Column(children: [
                                          Text(
                                            "Title ...",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          )
                                        ]),
                                      )
                                    ],
                                  )),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 10, top: 10),
                              height: 130,
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 67, 101, 175),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(65.0),
                                        topRight: Radius.circular(10),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color.fromARGB(255, 85, 150, 194),
                                          Color.fromARGB(255, 43, 145, 204),
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                    255, 124, 130, 180)
                                                .withOpacity(0.3),
                                            offset: Offset(-8.0, 8.0),
                                            blurRadius: 8.0,
                                            spreadRadius: 4.0)
                                      ]),
                                  padding: const EdgeInsets.only(
                                    left: 25,
                                    top: 20.0,
                                    bottom: 0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Date",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 1.5,
                                            height: 11,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 11.5,
                                          ),
                                          Text(
                                            "Publisher",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5, right: 20),
                                        child: Column(children: [
                                          Text(
                                            "Title ...",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          )
                                        ]),
                                      )
                                    ],
                                  )),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 10, top: 10),
                              height: 130,
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 86, 106, 150),
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(65.0),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color.fromARGB(255, 87, 124, 206),
                                          Color.fromARGB(255, 90, 133, 190),
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                    255, 124, 130, 180)
                                                .withOpacity(0.3),
                                            offset: Offset(-8.0, 8.0),
                                            blurRadius: 8.0,
                                            spreadRadius: 4.0)
                                      ]),
                                  padding: const EdgeInsets.only(
                                    left: 25,
                                    top: 20.0,
                                    bottom: 0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Date",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 1.5,
                                            height: 11,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 11.5,
                                          ),
                                          Text(
                                            "Publisher",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5, right: 20),
                                        child: Column(children: [
                                          Text(
                                            "Title ...",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: 'PTSansRegular',
                                            ),
                                          )
                                        ]),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //캠페인 탭
                    Center(
                        child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.only(top: 10),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Positioned(
                          top: 10,
                          child: Card(
                            elevation: 8.0,
                            shadowColor: Colors.grey.withOpacity(0.4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(""),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 241, 241, 241),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  margin: const EdgeInsets.only(
                                    top: 125,
                                  ),
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: Text(
                                    "Title",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: const Color(0xff575757),
                                        fontFamily: 'PTSansRegular'),
                                  ),
                                )),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          child: Card(
                            elevation: 8.0,
                            shadowColor: Colors.grey.withOpacity(0.4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(""),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 241, 241, 241),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  margin: const EdgeInsets.only(
                                    top: 125,
                                  ),
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: Text(
                                    "Title",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: const Color(0xff575757),
                                        fontFamily: 'PTSansRegular'),
                                  ),
                                )),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          child: Card(
                            elevation: 8.0,
                            shadowColor: Colors.grey.withOpacity(0.4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(""),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 241, 241, 241),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  margin: const EdgeInsets.only(
                                    top: 125,
                                  ),
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: Text(
                                    "Title",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: const Color(0xff575757),
                                        fontFamily: 'PTSansRegular'),
                                  ),
                                )),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          child: Card(
                            elevation: 8.0,
                            shadowColor: Colors.grey.withOpacity(0.4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(""),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 241, 241, 241),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  margin: const EdgeInsets.only(
                                    top: 125,
                                  ),
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: Text(
                                    "Title",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: const Color(0xff575757),
                                        fontFamily: 'PTSansRegular'),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    )),
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
