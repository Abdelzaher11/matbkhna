// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:matbkhna/constants/colors.dart';
import 'package:matbkhna/constants/padding.dart';
import 'package:matbkhna/screens/categories_screen.dart';
import 'package:matbkhna/services/database_methods.dart';
import 'package:matbkhna/widgets/custom_app_bar.dart';
import 'package:matbkhna/widgets/custom_sized_box.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Database _database = Database();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: kGreyColor,
      drawer: Drawer(
        child: Column(
          children: [
            Text(
              'hi',
            ),
            CustomSizedBox(30.0, 0.0),
            MaterialButton(
              onPressed: (){
                _database.logOut(context);
              },
              child: Text(
                'Logout',
                style: TextStyle(
                  color: kWhiteColor,
                ),
              ),
              color: kMainColor,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          ///app bar
          CustomAppBar(true,'Home Page'),
          ///content
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: kPadding15,right: kPadding15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ///american
                        Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          height: MediaQuery.of(context).size.height*0.35,
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              ///image
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(kPadding15),
                                  child: Container(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/matbkhna_logo.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ///title
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=> CategoriesScreen('American'),
                                  ));
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height*0.04,
                                  decoration: BoxDecoration(
                                    color: kMainColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'American',
                                      style: TextStyle(
                                        color: kWhiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ///italian
                        Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          height: MediaQuery.of(context).size.height*0.35,
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              ///image
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(kPadding15),
                                  child: Container(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/matbkhna_logo.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ///title
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=> CategoriesScreen('Italian'),
                                  ));
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height*0.04,
                                  decoration: BoxDecoration(
                                    color: kMainColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Italian',
                                      style: TextStyle(
                                        color: kWhiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ///mexican
                        Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          height: MediaQuery.of(context).size.height*0.35,
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              ///image
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(kPadding15),
                                  child: Container(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/matbkhna_logo.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ///title
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=> CategoriesScreen('Mexican'),
                                  ));
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height*0.04,
                                  decoration: BoxDecoration(
                                    color: kMainColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Mexican',
                                      style: TextStyle(
                                        color: kWhiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
