import 'package:flutter/material.dart';
import 'package:order_food_app/widgets/support_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: size.height / 2.5,
              width: size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFff5c30),
                      Color(0xFFe74b1a),
                    ]),
              ),
            ),
            Container(
              width: size.width,
              height: size.height / 2,
              margin: EdgeInsets.only(top: size.height / 3),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: const Text(''),
            ),
            Container(
              margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/logo.png',
                    width: size.width / 1.5,
                    fit: BoxFit.cover,
                  )),
                  const SizedBox(height: 50.0),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: size.width,
                      height: size.height / 2.5,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            'Login',
                            style: AppWidget.headerTextStyle(),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: AppWidget.semiBoldTextStyle(),
                                prefixIcon: const Icon(Icons.email_outlined)),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: AppWidget.semiBoldTextStyle(),
                                prefixIcon:
                                    const Icon(Icons.password_outlined)),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              'Forgot Password?',
                              style: AppWidget.semiBoldTextStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              width: 200,
                              decoration: BoxDecoration(
                                  color: const Color(0Xffff5722),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
                  Text(
                    "Don't have an account? Sign up",
                    style: AppWidget.semiBoldTextStyle(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
