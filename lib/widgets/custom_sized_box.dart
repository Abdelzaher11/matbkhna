// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class CustomSizedBox extends StatefulWidget {
  CustomSizedBox(this.height,this.width);
  var height;
  var width;
  @override
  _CustomSizedBoxState createState() => _CustomSizedBoxState();
}

class _CustomSizedBoxState extends State<CustomSizedBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: widget.height,width:widget.width ,);
  }
}
