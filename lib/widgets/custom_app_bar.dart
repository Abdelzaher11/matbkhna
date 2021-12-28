// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:matbkhna/constants/colors.dart';

class CustomAppBar extends StatefulWidget {
  CustomAppBar(this.leading,this.title);
  var leading;
  var title;
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: widget.leading,
      backgroundColor: kMainColor,
      title: Text(
        '${widget.title}',
      ),
    );
  }
}
