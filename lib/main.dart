import 'package:flutter/material.dart';
import 'package:ottplarform/screens/homescreen/homeprovider/home_provider.dart';
import 'package:ottplarform/screens/homescreen/homeview/home_screen.dart';
import 'package:ottplarform/screens/secondscreen/secondview/second_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'second':(context) => SecondScreen(),
        },
      ),
    ),
  );
}