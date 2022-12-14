import 'dart:async';
import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:get/get.dart';
import 'package:hpc_offline2/controllers/login_controller.dart';
import 'package:hpc_offline2/main.dart';
import 'package:hpc_offline2/views/home.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final LoginController loginController = Get.put(LoginController());

  get textGrey => null;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 148, 16, 16),
        body: Obx(
          () => SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: size.width,
                      height: size.height / 2.9,
                      color: Color.fromARGB(255, 148, 16, 16),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Image.asset(
                        'assets/images/Mc Delivery 1.png',
                        width: 200,
                        height: 180,
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: 560,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(100),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(39.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Center(
                            child: Text(
                              'Login Now!',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'E-mail',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: loginController.email,
                            focusNode: loginController.focusEmail.value,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'example@gmail.com',
                              filled: true,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Password',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: loginController.password,
                            focusNode: loginController.focusPassword.value,
                            obscureText: !loginController.isVisible.value,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Password',
                              filled: true,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  loginController.isVisible.value =
                                      !loginController.isVisible.value;
                                },
                                icon: Icon(loginController.isVisible.value
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: size.width,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(15)),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 148, 16, 16)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              onPressed: (() {
                                loginController.login();
                              }),
                              child: Text(
                                'Login ',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: size.width,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(15)),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 255, 255, 255)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              onPressed: (() {}),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/Google.png',
                                    width: 25,
                                    height: 25,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Login With Google',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t Have Account?'),
                              SizedBox(width: 5),
                              Text(
                                'Register Now!',
                                style: TextStyle(color: Colors.blue),
                                
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
