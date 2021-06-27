import 'package:ecommerce/screens/account_info/details.dart';
// import 'package:ecommerce/screens/drawer/custom_drawer.dart';aaaaaaaaaaaaaaaaaaaaaa
import 'package:flutter/material.dart';

class AccountInfo extends StatefulWidget {
  // const AccountInfo({Key? key}) : super(key: key);

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      // drawer: Drawer(
      //   child: CustomDrawer(),
      // ),
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
      body: Center(
        child: Container(
          width: size.width * 0.8,
          color: Colors.grey[200],
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                    child: Icon(
                      Icons.account_circle_outlined,
                      size: 150.0,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          "abc@gmail.com",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          "logout",
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "ACCOUNT INFORMATION",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Details(),
            ],
          ),
        ),
      ),
    );
  }
}
