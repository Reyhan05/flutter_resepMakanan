import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemJudul;
  final String itemSub;
  final String qty;
  final String itemBahan;
  final String itemCara;
  final String itemImage;

  const DetailPage(
      {Key key,
      this.itemJudul,
      this.itemSub,
      this.qty,
      this.itemBahan,
      this.itemCara,
      this.itemImage})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Resep",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              itemImage,
              width: 500.0,
              height: 250.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                itemJudul,
                style: TextStyle(color: Colors.lightBlue, fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                itemSub,
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 3.0,
                width: 400.0,
                color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 80.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Bahan",
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: Text(
                itemBahan,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Cara Masaknya",
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: Text(
                itemCara,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
