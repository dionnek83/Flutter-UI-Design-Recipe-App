import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

import 'package:recipe_app/pages/account.dart';
import 'package:recipe_app/pages/addrecipe.dart';
import 'package:recipe_app/pages/favourites.dart';
import 'package:recipe_app/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: const <Widget>[
            Icon(FluentIcons.home_16_regular, size: 30, color: Colors.white),
            Icon(FluentIcons.book_add_20_regular,
                size: 30, color: Colors.white),
            Icon(FluentIcons.heart_16_regular, size: 30, color: Colors.white),
            Icon(FluentIcons.person_16_regular, size: 30, color: Colors.white),
          ],
          color: const Color(0xFFFA8072),
          buttonBackgroundColor: const Color(0xFFFA8072),
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: getPage(index: page),
        ));
  }
}

Widget getPage({required int index}) {
  Widget widget = const Homepage();

  switch (index) {
    case 0:
      widget = const Homepage();
      break;

    case 1:
      widget = const AddRecipe();
      break;

    case 2:
      widget = const Favourites();
      break;

    case 3:
      widget = const Account();
      break;
  }
  return widget;
}
