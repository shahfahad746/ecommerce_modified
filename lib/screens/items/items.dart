import 'dart:ffi';

import 'package:ecommerce/screens/drawer/custom_drawer.dart';
import 'package:ecommerce/screens/items/imageSlider.dart';
import 'package:ecommerce/screens/items/itemsList.dart';
import 'package:flutter/material.dart';

import 'categoriesList.dart';

class Items extends StatefulWidget {
  // const Items({Key? key}) : super(key: key);
//

  _ItemsState createState() => new _ItemsState();
}

class _ItemsState extends State<Items> {
  int selectedIndex = 0;

  tapBottomNavItem(int index) {
    setState(() => selectedIndex = index);
  }

  List icons = [Icons.home, Icons.favorite, Icons.shopping_cart, Icons.person];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 20.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Ecom App UI",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.notifications,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImageSlider(),
              CategoriesList(),
              ItemsList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {},
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[400],
        shape: CircularNotchedRectangle(),
        notchMargin: 3,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < 4; i++)
              GestureDetector(
                child: Container(
                  height: 60,
                  width: 100,
                  child: TextButton(
                    child: Icon(
                      icons[i],
                      color: selectedIndex == i ? Colors.purple : Colors.black,
                    ),
                    // size: 32,
                    // color: selectedIndex == i ? Colors.purple : Colors.black,
                  ),
                ),
                onTap: () {
                  tapBottomNavItem(i);
                },
              ),
          ],
        ),
      ),
    );
  }
}

// BottomNavigationBar(

//         currentIndex: selectedIndex,
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//                 size: 32,
//               ),
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.favorite,
//                 size: 32,
//               ),
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.shopping_cart,
//                 size: 32,
//               ),
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.person,
//                 size: 32,
//               ),
//               label: ''),
//         ],
//         selectedItemColor: Colors.purple,
//         unselectedItemColor: Colors.grey,
//         onTap: tapBottomNavItem,
//       ),
