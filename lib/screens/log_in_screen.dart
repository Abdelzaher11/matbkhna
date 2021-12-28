// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:matbkhna/constants/colors.dart';
import 'package:matbkhna/constants/controller.dart';
import 'package:matbkhna/constants/fonts.dart';
import 'package:matbkhna/constants/padding.dart';
import 'package:matbkhna/screens/home_screen.dart';
import 'package:matbkhna/screens/register.dart';
import 'package:matbkhna/services/database_methods.dart';
import 'package:matbkhna/widgets/custom_sized_box.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final Database _database = Database();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyColor,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 1,),
          Container(
            height: MediaQuery.of(context).size.height*0.30,
            width: MediaQuery.of(context).size.width*0.4,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/matbkhna_logo.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'AIM',
                  style: TextStyle(
                    //color: kMainColor,
                    fontSize: kFont20,
                    letterSpacing: 0.9,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 1,),
          ///content
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.6,
                height: MediaQuery.of(context).size.height*0.45,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: kWhiteColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding:  EdgeInsets.all(kPadding25),
                  child: Column(
                    children: [
                      Spacer(flex: 1,),
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
                            controller: kLogInEmailController,
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
                      CustomSizedBox(15.0, 0.0),
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
                            controller: kLogInPasswordController,
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
                      Spacer(flex: 1,),
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
                            _database.logIn(
                                kLogInEmailController.text,
                                kLogInPasswordController.text,
                                context);
                          },
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                      Spacer(flex: 1,),
                      ///register
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "don't have account?",
                            style: TextStyle(
                              color: kBlackColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>RegistrationScreen(),
                              ));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: kMainColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Spacer(flex: 1,),
        ],
      ),
    );
  }
}
