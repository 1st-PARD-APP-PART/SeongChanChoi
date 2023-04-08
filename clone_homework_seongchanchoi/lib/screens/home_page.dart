import 'package:clone_homework_seongchanchoi/models/items.dart';
import 'package:clone_homework_seongchanchoi/screens/item_page.dart';
import 'package:clone_homework_seongchanchoi/screens/profile_page.dart';
import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:clone_homework_seongchanchoi/utils/themes.dart';
import 'package:clone_homework_seongchanchoi/components/itemTiles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomSelectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    ItemPage(),
    Container(
      color: Colors.accents[3],
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor,
        selectedLabelStyle: Themes.regularTheme.textTheme.subtitle2!
            .copyWith(color: primary[500], fontSize: 11),
        unselectedLabelStyle: Themes.regularTheme.textTheme.subtitle2!
            .copyWith(color: onSurface[400], fontSize: 11),
        selectedItemColor: Colors.black,
        unselectedItemColor: onSurface[500],
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          setState(() {
            bottomSelectedIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '홈',
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
              child: Icon(Icons.home),
            ),
          ),
          BottomNavigationBarItem(
            label: '나의 당근',
            icon: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                child: Icon(Icons.person_outline)),
          ),
        ],
      ),
      body: IndexedStack(
        index: bottomSelectedIndex,
        children: [
          ItemPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
