// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:matbkhna/constants/colors.dart';
import 'package:matbkhna/constants/fonts.dart';
import 'package:matbkhna/constants/padding.dart';
import 'package:matbkhna/widgets/custom_app_bar.dart';
import 'package:matbkhna/widgets/custom_sized_box.dart';


class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///app bar
          CustomAppBar(true,'Details'),
          ///content
          Expanded(
            child: Column(
              children: [
                ///image
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.28,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/background.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ///data
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context,index)=>detailsList(index),
                    shrinkWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget detailsList(index)=>Padding(
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
            ///title
            Row(
              children: [
                CustomSizedBox(0.0, 15.0),
                ///title
                Text(
                  '${index+1}- Pizza',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: kFont17,
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
