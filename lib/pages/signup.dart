import 'package:flutter/material.dart';
import 'package:order_food_app/pages/login.dart';
import 'package:order_food_app/widgets/bottom_nav.dart';
import 'package:order_food_app/widgets/support_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
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
              height: size.height / 1,
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
                      height: size.height / 1.7,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            'Sign up',
                            style: AppWidget.headerTextStyle(),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Name',
                                hintStyle: AppWidget.semiBoldTextStyle(),
                                prefixIcon: const Icon(Icons.person_outline)),
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
                          const SizedBox(height: 30),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                hintStyle: AppWidget.semiBoldTextStyle(),
                                prefixIcon:
                                    const Icon(Icons.password_outlined)),
                          ),
                          const SizedBox(height: 80),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BottomNavigationBarDown()),
                                (Route<dynamic> route) => false,
                              );
                            },
                            child: Material(
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
                                    'SIGNUP',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: Text(
                      "Already have an account? Login",
                      style: AppWidget.semiBoldTextStyle(),
                    ),
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
