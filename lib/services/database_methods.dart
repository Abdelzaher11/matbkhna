import 'package:flutter/material.dart';
import 'package:matbkhna/constants/controller.dart';
import 'package:matbkhna/constants/variables.dart';
import 'package:matbkhna/screens/home_screen.dart';
import 'package:matbkhna/screens/log_in_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Database{
  void createUser(email,password,context,number) {
    kAuthentication.createUserWithEmailAndPassword(email: email, password: password).then((value) {
      addUser(email, password,value.user!.uid, context,number);
      print('account created');
    }).catchError((e) {
      print(e.toString());
      print('createUser error');
    });
  }

  void addUser(email,password,uId,context,number) {
    kUsers.doc(uId).set({
      'email': email,
      'password': password,
      'uid': uId,
      'phone_number':number,
    }).then((value){
      print('user is added');
    }).catchError((e) {
      print(e.toString());
      print('addUser First error');
    });
  }

  void logIn(email,password,context) {
    kAuthentication
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('email', email);
      kEmailPreference = prefs.getString('email');
      // ignore: avoid_print
      print('get= $kEmailPreference');
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=>HomeScreen(),
      ));
      kLogInEmailController.text = '';
      kLogInPasswordController.text = '';
      // if(UniversalPlatform.isAndroid || UniversalPlatform.isIOS){
      //   if(kEmailController.text == 'admin@hti.edu.eg'){
      //     Navigator.push(context, MaterialPageRoute(
      //       builder: (context)=> MobileMainMenuScreen(),
      //     ));
      //   }else{
      //     Navigator.push(context, MaterialPageRoute(
      //       builder: (context)=> MobileExaminerMenuScreen(),
      //     ));
      //   }
      // }else{
      //   if(kEmailController.text == 'admin@hti.edu.eg'){
      //     Navigator.push(context, MaterialPageRoute(
      //       builder: (context)=> WebMainMenuScreen(),
      //     ));
      //   }else{
      //     Navigator.push(context, MaterialPageRoute(
      //       builder: (context)=> WebExaminerMenuScreen(),
      //     ));
      //   }
      // }
      // kEmailController..text = '';
      // kPasswordController..text = '';
    })
        .catchError((e) {
      // ignore: avoid_print
      print('error = $e');
      //kMessage = 'Wrong email or password';
      //getBox.alertBox(context, kMessage.toString());
      // ignore: avoid_print
      print('logIn error');
    });
  }
  void logOut(context){
    kAuthentication.signOut().then((value){
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=>LogInScreen(),
      ));
      //detect.detectPlatform(context, MobileLogInScreen(), WebLogInScreen());
    }).catchError((e){
      // ignore: avoid_print
      print('error=$e');
    });
  }
}