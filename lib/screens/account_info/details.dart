import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  // const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var userDetails = {
    "Full Name": {"value": "User", "editable": false},
    "Email": {"value": "user@gmail.com", "editable": false},
    "Phone": {"value": "+0900-78601", "editable": false},
    "Address": {"value": "New York, abc street, house # 72", "editable": false},
    "Gender": {"value": "Male", "editable": false},
    "Date Of Birth": {"value": "Oct 13, 1999", "editable": false}
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        child: Column(
      children: [
        for (MapEntry detail in userDetails.entries)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detail.key,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    !detail.value["editable"]
                        ? Text(
                            detail.value["value"],
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        : Container(
                            width: size.width * 0.5,
                            height: 20,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: detail.value["value"]),
                            ),
                          )
                  ],
                ),
                Icon(Icons.edit)
              ],
            ),
          )
      ],
    ));
  }
}
