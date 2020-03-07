import 'package:flutter/material.dart';
import 'package:m_coop/pages/detailAnggota.dart';

class MainMenu2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(
            "assets/images/Lambang.png",
            height: 40,
            width: 40,
          ),
        ),
        title: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(width: 1)),
                child: TextField(
                  // controller: ,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 18),
                      hintText: 'Search',
                      prefixIcon: Padding(
                        child: IconTheme(
                          data: IconThemeData(color: Colors.black),
                          child: Icon(Icons.search),
                        ),
                        padding: EdgeInsets.only(left: 5, right: 5),
                      )),
                ),
              ),
            )
          ],
        ),
        actions: <Widget>[
          ButtonTheme(
            minWidth: 2,
            height: 2,
            child: FlatButton(
              onPressed: () {},
              child: Icon(
                Icons.menu,
                color: Colors.blue,
              ),
            ),
          )
        ],
        titleSpacing: 3,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        )),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              child: Center(
                  child: Text(
                'MENU',
                style: TextStyle(fontSize: 20),
              )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ClipOval(
                          child: Image.asset(
                        "assets/images/sertifikat.png",
                        fit: BoxFit.cover,
                        width: 45.0,
                        height: 45.0,
                      )),
                      Text('Sertifikat')
                    ],
                  ),
                  InkWell(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDataAnggota()));
                    },
                                      child: Column(
                      children: <Widget>[
                        ClipOval(
                            child: Image.asset(
                          "assets/images/orang.png",
                          fit: BoxFit.cover,
                          width: 45.0,
                          height: 45.0,
                        )),
                        Text('Data')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDataAnggota()));
                    },
                                      child: Column(
                      children: <Widget>[
                        ClipOval(
                            child: Image.asset(
                          "assets/images/notpay.png",
                          fit: BoxFit.cover,
                          width: 45.0,
                          height: 45.0,
                        )),
                        Text('Belum')
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDataAnggota()));
                    },
                                      child: Column(
                      children: <Widget>[
                        ClipOval(
                            child: Image.asset(
                          "assets/images/alreadypay.png",
                          fit: BoxFit.cover,
                          width: 45.0,
                          height: 45.0,
                        )),
                        Text('Sudah')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
