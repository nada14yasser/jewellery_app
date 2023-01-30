import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("My cart"),),
      bottomNavigationBar: BottomNavigationBar(
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
      onTap:onItemTapped,
     
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
              Icons.person_pin,
              size: 35,
            ),
            label: "Profile")
      ],
    ),
    );
  }
  void onItemTapped(int index) {
    setState(() {
            if (index == 0) {
              // launch('tel:+201093658329');
              Navigator.of(context).pushNamed("home");
            }
            else if(index == 1) {
            Navigator.of(context).pushNamed("fav");
            }else if(index == 2) {
            Navigator.of(context).pushNamed("cart");
            }
            else{
              Navigator.of(context).pushNamed("prof");
            }
          });
  }
}