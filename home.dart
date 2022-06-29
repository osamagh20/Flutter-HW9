import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: dataShop.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red,
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(dataShop[index]["id"].toString()),
                        Text(dataShop[index]["name"].toString()),
                        Text(dataShop[index]["price"].toString()),
                        Text(dataShop[index]["discript"].toString()),
                        Image.network(
                          dataShop[index]["URL"].toString(),
                          width: 100,
                          height: 100,
                        ),
                        Text(dataShop[index]["rate"].toString()),
                      ],
                    ),
                  );
                }),
          ],
        ));
  }
}

List dataShop = [
  {
    "id": 23,
    "name": "product 1",
    "price": 120,
    "discript": "here tow person",
    "URL": "https://pngimg.com/uploads/mario/mario_PNG125.png",
    "rate": 2.2
  },
  {
    "id": 21,
    "name": "product 2",
    "price": 110,
    "discript": "here three persons",
    "URL":
        "https://png.pngtree.com/png-clipart/20190520/original/pngtree-facebook-social-media-icon-design-template-vector-png-image_3654755.png",
    "rate": 2.2
  },
  {
    "id": 19,
    "name": "product 3",
    "price": 220,
    "discript": "here four person",
    "URL": "https://i.stack.imgur.com/ILTQq.png",
    "rate": 2.2
  }
];
