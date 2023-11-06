import 'dart:io';

import 'package:flutter/material.dart';
// import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:tracker/globals.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  // final PageController controller;
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();



  String? usernameError = null;
  String? emailError = null;
  String? passwordError = null;
  DateTime? selectedDate;
  String? _selectedGender;
  File? _selectedFile;

  

  @override
  Widget build(BuildContext context) {


    Future<void> _selectDate() async {
      DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
      );
      if (pickedDate != null){
        _dateController.text = DateFormat('y-MM-dd').format(pickedDate);
      }
    }


    Future<void> _pickFile() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        setState(() {
          _selectedFile = File(result.files.single.path!);
        });
      } else {
        // User canceled the picker
      }
    }

    void printInput() {
        if (_usernameController.text.isEmpty) {
          setState(() {
            usernameError = 'Username is required';
          });
        } else {
          setState(() {
            usernameError = null;
          });
        }

        if (_emailController.text.isEmpty) {
          setState(() {
            emailError = 'Email is required';
          });
        } else {
          setState(() {
            emailError = null;
          });
        }

        if (_passController.text.isEmpty) {
          setState(() {
            passwordError = 'Password is required';
          });
        } else {
          setState(() {
            passwordError = null;
          });
        }

        if (emailError == null &&
            usernameError == null &&
            passwordError == null) {
          print('Email: ${_emailController.text}');
          print('Username: ${_usernameController.text}');
          print('Password: ${_passController.text}');
          print('Gender: $_selectedGender');
          print('Date of Birth: ${_dateController.text}');
          if (_selectedFile != null) {
            print('Selected File Path: ${_selectedFile!.path}');
          } else {
            print('No file selected');
          }

          Navigator.pop(context);
        }
      }


    return Scaffold(
      backgroundColor: baseColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [ baseColor, baseColor], // Adjust as needed
            ),
          ),
        child: SingleChildScrollView(
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
                  // textDirection: TextDirection.ltr,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _usernameController,
                      
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                      //   fillColor: Colors.white,
                      // filled: true, /
                        errorText: emailError,
                        labelText: 'Username',
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
                    TextField(
                      controller: _passController,
                      // textAlign: TextAlign.center,
                      obscureText: true,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        errorText: passwordError,
                        labelText: 'Password',
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
                      height: 25,
                    ),
      
      
                  DropdownButtonFormField<String>(
                      value: _selectedGender,

                      decoration: InputDecoration(
                        
                        labelText: 'Gender',
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
                        )
      
                      ),
                      items: <String>['Male', 'Female']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          // color:Colors.blue,
                          value: value,
                          child: Text(value, style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        )),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value; // updating the selected value
                        });
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
      
      
                  TextField(
                    controller: _dateController,
                    readOnly: true, // Prevent keyboard from appearing
                    onTap: _selectDate,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Date of Birth',
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
      
      
      
                  Row(
                      children: [
                        ElevatedButton(
                          onPressed: _pickFile,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            // padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), 
                              side: BorderSide(
                                  color: Colors.white, // Border color
                                  width: 1.5, // Border width
                                ),
                              // Adjust as needed
                            )),
                          ),
                          child: Text("Upload Image", 
                                  style: TextStyle(
                                    color: baseColor,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)
                                    ),
                        ),
                        SizedBox(width: 10),
                        Text(_selectedFile != null
                            ? _selectedFile!.path.split('/').last // display file name
                            : 'No file selected', 

                              style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600)
                            ),
                      ],
                    ),
      
                    const SizedBox(
                      height: 25,
                    ),
      
      
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Adjust as needed
                        )),
                      ),
                      onPressed: () {
                        printInput();
                      },
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center, // To center the content
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: 10), // Adjust space between text and icon
                            child: Text('Signup',
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
      
      
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 2.5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Login',
                              style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    
                    const SizedBox(
                      height: 40,
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


