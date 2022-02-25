import 'package:flutter/material.dart';
import 'package:seaya/screens/Routes/Navigation.dart';
import 'package:seaya/screens/Routes/signUp.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  LogInState createState() => LogInState();
}

// ignore: camel_case_types
class LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 150.0,
            ),

            //sub로고, 로그인 title
            SizedBox(
              width: 354,
              child: Row(
                children: const [
                  SizedBox(
                    width: 12.0,
                  ),
                  Image(
                    width: 54.0,
                    image: AssetImage(
                      'images/seaya_logo.png',
                    ),
                  ),
                  SizedBox(
                    width: 13.0,
                  ),
                  Text("LOG IN",
                      style: TextStyle(
                          color: Color(0xff02171a),
                          fontFamily: 'PTSansRegular"',
                          fontSize: 15.0),
                      textAlign: TextAlign.left),
                ],
              ),
            ),

            //로그인 폼
            Form(
                child: Theme(
                    data: ThemeData(
                        primaryColor: const Color(0xffa9c8cb),
                        inputDecorationTheme: const InputDecorationTheme(
                            labelStyle: TextStyle(
                                color: Color(0xff333333), fontSize: 10.0))),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: <Widget>[
                          //이메일
                          const TextField(
                            decoration: InputDecoration(labelText: 'E-mail'),
                            keyboardType: TextInputType.text,
                          ),
                          //비밀번호
                          const TextField(
                            decoration: InputDecoration(labelText: 'Password'),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 50.0,
                          ),
                          Center(
                            child: Row(
                              children: [
                                //Login 버튼
                                ButtonTheme(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  minWidth: 150.0,
                                  height: 50.0,
                                  child: RaisedButton(
                                    color: const Color(0xffEFF1F5),
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Color(0xff2B2B2B),
                                        fontFamily: 'PTSansRegular',
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Navigation(),
                                          ),
                                        );
                                      });
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                //Sign up 버튼
                                ButtonTheme(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  minWidth: 150.0,
                                  height: 50.0,
                                  child: RaisedButton(
                                    color: Color.fromARGB(255, 219, 231, 240),
                                    child: const Text(
                                      'Sign up',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Color(0xff2B2B2B),
                                        fontFamily: 'PTSansRegular',
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUp(),
                                          ),
                                        );
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 80.0,
                          ),
                          Center(
                            child: Column(children: [
                              //구글로 로그인
                              Stack(
                                children: [
                                  ButtonTheme(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        color:
                                            Color.fromARGB(134, 236, 236, 236),
                                      ),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    minWidth: 310.0,
                                    height: 40.0,
                                    child: RaisedButton(
                                      color: const Color(0xffffffff),
                                      child: const Text(
                                        '         Sign in with Google',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Color(0xff2B2B2B),
                                          fontFamily: 'PTSansRegular',
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          /*
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => BasicPage(),
                                    ),
                                  );
                                  */
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 77.0),
                                    padding: const EdgeInsets.all(16.0),
                                    child: const Image(
                                      width: 16.0,
                                      image: AssetImage(
                                        'images/google_icon.png',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //페이스북으로 로그인
                              Stack(
                                children: [
                                  ButtonTheme(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    minWidth: 310.0,
                                    height: 40.0,
                                    child: RaisedButton(
                                      color: const Color(0xff3B5898),
                                      child: const Text(
                                        '          Log in with Facebook',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Color(0xffffffff),
                                          fontFamily: 'PTSansRegular',
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          /*
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => BasicPage(),
                                    ),
                                  );
                                  */
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 75.0),
                                    padding: const EdgeInsets.all(14.0),
                                    child: const Image(
                                      width: 19.0,
                                      image: AssetImage(
                                        'images/Facebook_icon.png',
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          )
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
