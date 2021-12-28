// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:matbkhna/constants/colors.dart';
import 'package:matbkhna/constants/controller.dart';
import 'package:matbkhna/constants/fonts.dart';
import 'package:matbkhna/constants/padding.dart';
import 'package:matbkhna/services/database_methods.dart';
import 'package:matbkhna/widgets/custom_app_bar.dart';


class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final Database _database = Database();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyColor,
      body: Column(
        children: [
          ///app bar
          CustomAppBar(true,'Register'),
          ///content
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  height: MediaQuery.of(context).size.height*0.65,
                  width: MediaQuery.of(context).size.width*0.65,
                  decoration: BoxDecoration(
                    color: kWhiteColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(kPadding25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ///title
                        Text(
                          'Register',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: kFont20,
                            letterSpacing: 0.6,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        ///email
                        Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: MediaQuery.of(context).size.width*0.3,
                          height: MediaQuery.of(context).size.height*0.08,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(kPadding10),
                            child: TextField(
                              controller: kRegisterEmailController,
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Email',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: kWhiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ///password
                        Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: MediaQuery.of(context).size.width*0.3,
                          height: MediaQuery.of(context).size.height*0.08,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(kPadding10),
                            child: TextField(
                              obscureText: true,
                              obscuringCharacter: '*',
                              controller: kRegisterPasswordController,
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: kWhiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ///confirm password
                        Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: MediaQuery.of(context).size.width*0.3,
                          height: MediaQuery.of(context).size.height*0.08,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(kPadding10),
                            child: TextField(
                              obscureText: true,
                              obscuringCharacter: '*',
                              controller: kRegisterConfirmPasswordController,
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: kWhiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ///phone number
                        Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: MediaQuery.of(context).size.width*0.3,
                          height: MediaQuery.of(context).size.height*0.08,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(kPadding10),
                            child: TextField(
                              controller: kRegisterPhoneNumberController,
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Phone Number',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: kWhiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ///button
                        Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          height: MediaQuery.of(context).size.height*0.06,
                          width: MediaQuery.of(context).size.width*0.18,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: MaterialButton(
                            onPressed: (){
                              setState(() {
                                _database.createUser(
                                    kRegisterEmailController.text,
                                    kRegisterPasswordController.text,
                                    context,
                                    kRegisterPhoneNumberController.text);
                              });
                            },
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
