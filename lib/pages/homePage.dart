import 'package:blood_donation/pages/add.dart';
import 'package:blood_donation/pages/info.dart';
import 'package:blood_donation/pages/messageBox.dart';
import 'package:blood_donation/pages/place.dart';
import 'package:blood_donation/pages/profile.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final donationList = [
    "Ahmet Yılmaz ",
    "Büşra Güneş",
    "Cenk Yıldız",
    "Zehra Ay",
    "Ali Güzel",
  ];
  final detailsList = [
    "07.07.2021\n A+\n Detay:",
    "07.07.2021\n 0+\n Detay:",
    "07.07.2021\n B-\n Detay:",
    "07.07.2021\n 0+\n Detay:",
    "07.07.2021\n AB+\n Detay:"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red.shade700,
                Colors.red.shade500,
                Colors.red.shade300,
                Colors.red.shade200
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        title: Text('Kan Bağışı'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.message, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new MessageBox()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Vbt Yazılım'),
              accountEmail: Text('staj@vbt.com.tr'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey[400],
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red.shade700,
                    Colors.red.shade500,
                    Colors.red.shade300,
                    Colors.red.shade100
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new HomePage()));
                },
                child: ListTile(
                    title: Text('Ana Sayfa'),
                    leading: Icon(Icons.home, color: Colors.grey))),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Profile()));
                },
                child: ListTile(
                    title: Text('Hesabım'),
                    leading: Icon(Icons.person, color: Colors.grey))),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new MessageBox()));
                },
                child: ListTile(
                    title: Text('Mesajlarım'),
                    leading: Icon(Icons.message, color: Colors.grey))),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new DonationPlace()));
                },
                child: ListTile(
                    title: Text('Kan Bağışı Noktaları'),
                    leading: Icon(Icons.favorite, color: Colors.red))),
            // InkWell(
            //     onTap: () {},
            //     child: ListTile(
            //         title: Text('Nasıl Bağış Yapabilirim?'),
            //         leading: Icon(Icons.help, color: Colors.grey))),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new InfoPage()));
                },
                child: ListTile(
                    title: Text('Bilgilendirme'),
                    leading: Icon(Icons.info_rounded, color: Colors.grey))),
            Divider(color: Colors.grey),
            // InkWell(
            //     onTap: () {},
            //     child: ListTile(
            //         title: Text('Ayarlar'),
            //         leading: Icon(Icons.settings, color: Colors.grey))),
            // Divider(),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Login()));
              },
              child: ListTile(
                title: Text('Çıkış'),
                leading: Icon(
                  Icons.transit_enterexit,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: donationList.length,
          itemBuilder: (context, index) {
            return ListTile(
              minLeadingWidth: 2,
              isThreeLine: true,
              leading: Icon(Icons.person),
              title: Text(donationList[index]),
              subtitle: Text(detailsList[index]),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _addpage,
        child: Icon(Icons.add, size: 40),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _addpage() {
    Navigator.push<void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => AddPage(),
      ),
    );
  }
}
