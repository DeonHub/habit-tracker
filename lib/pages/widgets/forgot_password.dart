import 'package:flutter/material.dart';
import 'package:tracker/globals.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});
  // final PageController controller;
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();


  String? emailError = null;


  @override
  Widget build(BuildContext context) {

    void printInput() {
      if (_emailController.text.isEmpty) {
        setState(() {
          emailError = 'Email is required';
        });
      } else {
        setState(() {
          emailError = null;
        });
      }

      if (emailError == null) {
        print('Email: ${_emailController.text}');
      }
    }

    return Scaffold(
      backgroundColor: baseColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Image.asset(
                "assets/trans.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                textDirection: TextDirection.ltr,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
    
                  const Text(
                    'Enter your email address to get reset link',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextField(
                    controller: _emailController,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      errorText: emailError,
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  
          
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Adjust as needed
                      )),
                    ),
                    onPressed: () {

                    },
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // To center the content
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: 10), // Adjust space between text and icon
                          child: Text('Submit',
                              style: TextStyle(
                                  color: baseColor,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                        ),
                        // Icon(Icons.arrow_forward, color: Colors.blue)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Back to Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(
                      height: 50,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
