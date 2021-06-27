import 'package:flutter/material.dart';

class History extends StatelessWidget {
  // const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List historyList = [
      {
        "image": "assets/images/mobile1.jpg",
        "name": "Iphone 12",
        "rating": "5.0",
        "review": "23",
        "price": "11"
      },
      {
        "image": "assets/images/mobile2.jpg",
        "name": "Blackberry",
        "rating": "4.9",
        "review": "47",
        "price": "37"
      },
      {
        "image": "assets/images/mobile3.jpg",
        "name": "OnePlus",
        "rating": "4.0",
        "review": "33",
        "price": "18"
      },
      {
        "image": "assets/images/mobile4.jpg",
        "name": "Samsung",
        "rating": "5.0",
        "review": "11",
        "price": "25"
      },
      {
        "image": "assets/images/mobile5.jpg",
        "name": "Iphone 8",
        "rating": "2.7",
        "review": "36",
        "price": "22"
      },
      {
        "image": "assets/images/mobile1.jpg",
        "name": "Iphone 6",
        "rating": "3.7",
        "review": "23",
        "price": "8"
      },
      {
        "image": "assets/images/mobile2.jpg",
        "name": "Iphone 9",
        "rating": "4.5",
        "review": "16",
        "price": "13"
      },
      {
        "image": "assets/images/mobile3.jpg",
        "name": "Iphone 7",
        "rating": "3.8",
        "review": "5",
        "price": "12"
      },
      {
        "image": "assets/images/mobile4.jpg",
        "name": "Iphone 11",
        "rating": "4.0",
        "review": "22",
        "price": "11"
      },
      {
        "image": "assets/images/mobile5.jpg",
        "name": "Iphone 12",
        "rating": "4.3",
        "review": "21",
        "price": "17"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
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
            padding: EdgeInsets.only(top: 10.0),
            width: size.width * 0.8,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Device name",
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "HISTORY",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        for (var item in historyList)
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                    item["image"],
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item["name"],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 3.0,
                                          ),
                                          Text(item["rating"]),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text("(${item['review']} Reviews)")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "\$${item['price']}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
