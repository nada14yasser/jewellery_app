import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      mouseCursor: SystemMouseCursors.grab,
      selectedFontSize: 20,
      selectedIconTheme: IconThemeData(
        color: Colors.pink[200],
      ),
      selectedItemColor: Colors.pink[200],
      unselectedIconTheme: IconThemeData(
        color: Colors.pink[50],
      ),
      unselectedItemColor: Colors.pink[50],
      // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 35,
            ),
            label: "Fav"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 35,
            ),
            label: "Cart"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 35,
            ),
            label: "Setting"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
              size: 35,
            ),
            label: "Profile")
      ],
    );
  }
}
