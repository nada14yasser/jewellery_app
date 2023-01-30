import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jewellery_app/cart.dart';
import 'package:jewellery_app/fav.dart';
import 'package:jewellery_app/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  final int _selectedIndex = 0;
  bool _isFavorited = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      drawer: Drawer(
        child: ListView(children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
              accountName: Text(
                "Nada Yasser",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              accountEmail: Text("nadayasser@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 17))),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Language",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 15),
                  ),
                  leading: Icon(Icons.g_translate,
                      color: Theme.of(context).primaryColor),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Notifications",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  leading: Icon(Icons.notifications_outlined,
                      color: Theme.of(context).primaryColor),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "privacy Policy",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  leading: Icon(Icons.file_copy_outlined,
                      color: Theme.of(context).primaryColor),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Contact Us",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  leading:
                      Icon(Icons.call, color: Theme.of(context).primaryColor),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  leading:
                      Icon(Icons.logout, color: Theme.of(context).primaryColor),
                  onTap: () {
                    Navigator.of(context).pushNamed("signin");
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
      body: GestureDetector(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: [
              Column(children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(children: [
                    InkWell(
                      child: const Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 30,
                      ),
                      onTap: () {
                        scaffoldkey.currentState?.openDrawer();
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Our Products",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 5, top: 10, bottom: 5),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/goldring.jpg',
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Text(
                                    'Rings',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 10, bottom: 5),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/watch.png',
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.fill,
                                ),
                                const Text(
                                  'Watches',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 10, bottom: 5),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/nackless.png',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.fill,
                                ),
                                const Text(
                                  'Necklaces',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 10, top: 10, bottom: 5),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/earing.png',
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.fill,
                                ),
                                const Text(
                                  'Earings',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("ring");
                        },
                        child: Container(
                          width: 150,
                          height: 200,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.grey,
                                    offset: Offset(1, 1))
                              ]),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: IconButton(
                                  onPressed: () => setState(
                                      () => _isFavorited = !_isFavorited),
                                  icon: _isFavorited
                                      ? const Icon(Icons.favorite)
                                      : const Icon(Icons.favorite_outline),
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Image.asset(
                                'images/goldring.jpg',
                                width: 60,
                                height: 60,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Gold Ring',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '120 \$',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.yellow.shade400,
                                    ),
                                    Icon(Icons.star,
                                        size: 20,
                                        color: Colors.yellow.shade400),
                                    Icon(Icons.star,
                                        size: 20,
                                        color: Colors.yellow.shade400),
                                    Icon(Icons.star_half,
                                        size: 20,
                                        color: Colors.yellow.shade400),
                                    Icon(Icons.star_border,
                                        size: 20, color: Colors.yellow.shade400)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  color: Colors.grey,
                                  offset: Offset(1, 1))
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: IconButton(
                                onPressed: () => setState(
                                    () => _isFavorited = !_isFavorited),
                                icon: _isFavorited
                                    ? const Icon(Icons.favorite_outline)
                                    : const Icon(Icons.favorite),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Image.asset(
                              'images/watch.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Watch',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '150 \$ ',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade400,
                                  ),
                                  Icon(Icons.star,
                                      size: 20, color: Colors.yellow.shade400),
                                  Icon(Icons.star,
                                      size: 20, color: Colors.yellow.shade400),
                                  Icon(Icons.star_border,
                                      size: 20, color: Colors.yellow.shade400),
                                  Icon(Icons.star_border,
                                      size: 20, color: Colors.yellow.shade400)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  color: Colors.grey,
                                  offset: Offset(1, 1))
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: IconButton(
                                onPressed: () => setState(
                                    () => _isFavorited = !_isFavorited),
                                icon: _isFavorited
                                    ? const Icon(Icons.favorite)
                                    : const Icon(Icons.favorite_outline),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Image.asset(
                              'images/nackless.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Necklace',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '200 \$',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade400,
                                  ),
                                  Icon(Icons.star,
                                      size: 20, color: Colors.yellow.shade400),
                                  Icon(Icons.star,
                                      size: 20, color: Colors.yellow.shade400),
                                  Icon(Icons.star,
                                      size: 20, color: Colors.yellow.shade400),
                                  Icon(Icons.star_half,
                                      size: 20, color: Colors.yellow.shade400)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  color: Colors.grey,
                                  offset: Offset(1, 1))
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: IconButton(
                                onPressed: () => setState(
                                    () => _isFavorited = !_isFavorited),
                                icon: _isFavorited
                                    ? const Icon(Icons.favorite)
                                    : const Icon(Icons.favorite_outline),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Image.asset(
                              'images/earing.png',
                              width: 65,
                              height: 65,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Earing',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '70 \$ ',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade400,
                                  ),
                                  Icon(Icons.star,
                                      size: 20, color: Colors.yellow.shade400),
                                  Icon(Icons.star,
                                      size: 20, color: Colors.yellow.shade400),
                                  Icon(Icons.star,
                                      size: 20, color: Colors.yellow.shade400),
                                  Icon(Icons.star_border,
                                      size: 20, color: Colors.yellow.shade400)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ])
            ],
          ),
        ),
      ),
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
        onTap: onItemTapped,

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
      } else if (index == 1) {
        Navigator.of(context).pushNamed("fav");
      } else if (index == 2) {
        Navigator.of(context).pushNamed("cart");
      } else {
        Navigator.of(context).pushNamed("prof");
      }
    });
  }
}
