// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

///database

FirebaseAuth kAuthentication = FirebaseAuth.instance;
CollectionReference kUsers = FirebaseFirestore.instance.collection('users');
var kEmailPreference;

