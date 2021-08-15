import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/UI/home_page.dart';
import 'controller/side_menu_cont.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => SideMenuController(),
          ),
        ],
        child: const MyHomePage(),
      ),
    );
  }
}
