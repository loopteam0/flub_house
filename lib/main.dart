import 'package:fclub_house/pages/home.dart';
import 'package:fclub_house/pages/home_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flub House',
      theme: ThemeData(
          brightness: Brightness.dark,
          canvasColor: Colors.black,
          primaryColor: Color.fromRGBO(107, 0, 255, 1),
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.transparent,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData().copyWith(
            backgroundColor: Colors.transparent,
          )),
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        '/room': (_) => RoomPage(),
      },
    );
  }
}
