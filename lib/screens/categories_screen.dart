// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:matbkhna/constants/colors.dart';
import 'package:matbkhna/constants/fonts.dart';
import 'package:matbkhna/constants/padding.dart';
import 'package:matbkhna/screens/details_screen.dart';
import 'package:matbkhna/widgets/custom_app_bar.dart';
import 'package:matbkhna/widgets/custom_sized_box.dart';

class CategoriesScreen extends StatefulWidget {
  CategoriesScreen(this.title);
  var title;

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///app bar
          CustomAppBar(true,'${widget.title}'),
          ///content
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index)=>categoriesList(),
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
  Widget categoriesList()=>Padding(
    padding: EdgeInsets.only(left: kPadding50,right: kPadding50,top: kPadding25,bottom: kPadding15),
    child: Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.23,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(kPadding10),
        child: Column(
          children: [
            ///image and title
            Row(
              children: [
                CustomSizedBox(0.0, 15.0),
                ///image
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width*0.15,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage('assets/matbkhna_logo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                CustomSizedBox(0.0, 30.0),
                ///title
                Text(
                  'Pizza',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: kFont17,
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
            Spacer(flex: 1,),
            ///details button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ///button
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>DetailsScreen(),
                    ));
                  },
                  child: Text(
                    'Details',
                    style: TextStyle(
                      color: kWhiteColor,
                    ),
                  ),
                ),
                CustomSizedBox(0.0, 15.0),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
