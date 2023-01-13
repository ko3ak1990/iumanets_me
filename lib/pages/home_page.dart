import 'package:iumanets_me/config/assets.dart';
import 'package:iumanets_me/tabs/about_tab.dart';
import 'package:iumanets_me/tabs/employers_tab.dart';
import 'package:iumanets_me/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> tabWidgets = <Widget>[
    const AboutTab(),
    const ProjectsTab(),
  ];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: ThemeSwitcher.of(context).isDarkModeOn?const Icon(Icons.wb_sunny):Image.asset(Assets.moon,height: 20,width: 20,),
              onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
            )
          ],
        ),
        body: Center(
          child: tabWidgets.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'About Me',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Work History',
            )
          ],
          currentIndex: _selectedIndex,
          onTap: (index)=> setState(() => _selectedIndex = index),
          selectedItemColor: Theme.of(context).colorScheme.secondary,
        ),
    );
  }

}
