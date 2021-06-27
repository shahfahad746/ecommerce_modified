import 'package:ecommerce/screens/account_info/account_info.dart';
import 'package:ecommerce/screens/history/history.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  // const CustomDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shah Fahad",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("assets/images/user.png"),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.8),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              )),
        ),
        SizedBox(
          height: 10.0,
        ),
        ListTile(
          title: Text(
            "Account Information",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          tileColor: Colors.black.withOpacity(0.8),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (conetxt) => AccountInfo()));
          },
        ),
        SizedBox(
          height: 5.0,
        ),
        ListTile(
          title: Text(
            "History",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          tileColor: Colors.black.withOpacity(0.8),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (conetxt) => History()));
          },
        ),
      ],
    );
  }
}
