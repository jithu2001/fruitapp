import 'package:flutter/material.dart';
import 'package:fruitapp/pages/signin.dart';
//import 'package:flutter_signin_button/button_list.dart';
//import 'package:flutter_signin_button/button_view.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, top: 80),
                child: Text('SignUp',
                    style: TextStyle(color: Colors.black, fontSize: 32)),
              ),
              SingleChildScrollView(
                  padding: EdgeInsets.all(40),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              labelText: 'Retype Password',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              labelText: 'Phone No.',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()));
                              },
                              child: Text(
                                'SignIn',
                                style: TextStyle(
                                  color: Colors.teal.shade300,
                                  fontSize: 20,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            FloatingActionButton.extended(
                              onPressed: () {},
                              label: Text('Register'),
                              backgroundColor: Colors.teal,
                              splashColor: Colors.orangeAccent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        /* Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SignInButton(Buttons.Google, onPressed: (){},
                            padding: EdgeInsets.only(left: 50,right: 50),)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SignInButton(Buttons.FacebookNew, onPressed: (){},
                            padding: EdgeInsets.only(left: 50,right: 50),)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SignInButton(Buttons.Apple, onPressed: (){},
                            padding: EdgeInsets.only(left: 50,right: 50),)
                          ],
                        ), */
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
