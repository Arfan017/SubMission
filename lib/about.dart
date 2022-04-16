import 'package:flutter/material.dart';

class about extends StatefulWidget {
  about({Key? key}) : super(key: key);

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  String txtabout =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  String name = "Muhammad Arfan";

  String alamat = "Papua Barat, Kota Sorong";

  int _addFriends = 0;

  void addFriends() {
    setState(() {
      _addFriends++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            "images/gambarku.jpg",
            width: 412,
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.name,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    this.alamat,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  )
                ],
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: addFriends,
                      icon: Icon(Icons.person_add),
                      color: Colors.blue,
                      iconSize: 32,
                    ),
                    Container(width: 5),
                    Text(
                      '$_addFriends',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              txtabout,
              softWrap: true,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
