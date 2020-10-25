import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jetbi_portfolio/src/blocs/main_cubit.dart';
import 'file:///C:/Users/jbUser/AndroidStudioProjects/jetbi_portfolio/lib/src/constants.dart';
import 'package:jetbi_portfolio/src/ui/main_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPrimaryColor,
          textTheme: TextTheme(
            headline: TextStyle(fontWeight: FontWeight.bold),
            button: TextStyle(fontWeight: FontWeight.bold),
            title: TextStyle(fontWeight: FontWeight.bold),
            body1: TextStyle(color: kTextColor),
          )),
      home: Scaffold(
        body: BlocProvider<MainCubit>(
          create: (context) => MainCubit(),
          child: MainForm(),
        ),
      ),
    );
  }
}