import 'package:flutter/material.dart';


import 'package:tomato_final/pages/info.dart';
import 'package:tomato_final/pages/home.dart';
import 'package:tomato_final/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) =>Loading(),
    '/home' : (context) => Home(),
    '/info': (context) => Info()
    // '/location': (context) => ChooseLocation()
  },
));
