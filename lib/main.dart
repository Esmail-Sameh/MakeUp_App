import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up_app/view/screens/details.dart';
import '../test.dart';
import '../view/screens/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      getPages: [
        GetPage(name: HomeScreen.routName , page: ()=> HomeScreen()),
        GetPage(name: TestScreen.routName , page: ()=> TestScreen()),
        GetPage(name: DetailsScreen.routName , page: ()=> DetailsScreen()),
      ],
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0.0,

        ),
        scaffoldBackgroundColor: Colors.grey[300]
      ),
    );
  }
}
