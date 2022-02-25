import 'package:flutter/material.dart';
import 'package:seaya/screens/Routes/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  SignUpState createState() => SignUpState();
}

// ignore: camel_case_types
class SignUpState extends State<SignUp> {
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
                  Text("SIGN UP",
                      style: TextStyle(
                          color: Color(0xff02171a),
                          fontFamily: 'PTSansRegular"',
                          fontSize: 15.0),
                      textAlign: TextAlign.left),
                ],
              ),
            ),
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
                          const TextField(
                            decoration: InputDecoration(labelText: 'E-mail'),
                            keyboardType: TextInputType.text,
                          ),
                          const TextField(
                            decoration: InputDecoration(labelText: 'Password'),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          const TextField(
                            decoration:
                                InputDecoration(labelText: 'Password - check'),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          const TextField(
                            decoration: InputDecoration(labelText: 'Name'),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          const TextField(
                            decoration: InputDecoration(labelText: 'Phone'),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 70.0,
                          ),
                          Center(
                            child: Row(
                              children: [
                                ButtonTheme(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  minWidth: 150.0,
                                  height: 50.0,
                                  child: RaisedButton(
                                    color: const Color(0xffEFF1F5),
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
                                            builder: (context) => const LogIn(),
                                          ),
                                        );
                                      });
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                ButtonTheme(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  minWidth: 150.0,
                                  height: 50.0,
                                  child: RaisedButton(
                                    color: Color.fromARGB(255, 219, 231, 240),
                                    child: const Text(
                                      'Cancle',
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
                                            builder: (context) => const LogIn(),
                                          ),
                                        );
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
