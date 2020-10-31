import 'package:flutter/material.dart';
// import 'package:new_project1/provider/edited_text_web.dart';
import 'package:new_project1/provider/edited_text.dart';
import 'package:new_project1/screens/home_screen.dart';
import 'package:provider/provider.dart';
// import 'package:new_project1/screens/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>EditedText(),
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

