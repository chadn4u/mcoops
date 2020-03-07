import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_coop/models/members.dart';

class DetailDataAnggota extends StatefulWidget {
  @override
  _DetailDataAnggotaState createState() => _DetailDataAnggotaState();
}

class _DetailDataAnggotaState extends State<DetailDataAnggota> {
  final List<Member> lstMember = [
    Member(
        'Ubaidillah',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        1),
    Member(
        'Ubaidillah',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        0),
    Member(
        'Ubaidillah',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        1),
    Member(
        'Ubaidillah',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        3),
    Member(
        'Ubaidillah',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        1),
    Member(
        'Ubaidillah',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        0),
    Member(
        'Ubaidillah',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        3),
    Member(
        'Ubaidillah',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        0),
    Member(
        'Ubaidillah',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        1),
    Member(
        'Ubaidillah',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        0),
    Member(
        'Ubaidillah 2312',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        1),
    Member(
        'Ubaidillah 33',
        '312312312',
        'Jakarta,31 -02 - 1978',
        'Ubaidillah@gmail.com',
        'Pria',
        '08112322234',
        'Kampung Karang Kendal',
        1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill)),
        child: Column(
          children: <Widget>[
            _appBar(),
            SizedBox(
              height: 5,
            ),
            _statusPanel(),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: lstMember.length,
                  itemBuilder: (BuildContext ctx, int idx) {
                    return Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.circular(7)),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(width: 4, color: _getStatusColor(lstMember[idx].status))),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/images.jpg'),
                            radius: 22,
                          ),
                          title: Text(
                            lstMember[idx].namaAnggota,
                            style: TextStyle(fontSize: 12),
                          ),
                          subtitle: Row(
                            children: <Widget>[
                              Icon(
                                Icons.calendar_today,
                                size: 10,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                lstMember[idx].ttl,
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('-128.00 PLN'),
                              CircleAvatar(
                                child: _getStatusIcon(lstMember[idx].status),
                                backgroundColor: _getStatusColor(lstMember[idx].status),
                                maxRadius: 15,
                                minRadius: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        child: BottomAppBar(
          color: Color.fromARGB(255, 68, 62, 243),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  iconSize: 22,
                  padding: EdgeInsets.only(left: 20),
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              IconButton(
                  iconSize: 22,
                  padding: EdgeInsets.only(left: 20),
                  color: Colors.white,
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Color _getStatusColor(int status){
    switch (status) {
      case 0:
        return Colors.red;
        break;
      case 1:
        return Colors.green;
        break;
      case 3:
        return Colors.blueAccent;
        break;
      default:
        return Colors.red;
        break;
    }
  }
  Widget _getStatusIcon(int status) {
    switch (status) {
      case 0:
        return Icon(
          Icons.close,
          size: 15,
        );
        break;
      case 1:
        return Icon(
          Icons.check,
          size: 15,
        );
        break;
      case 3:
        return Icon(
          Icons.refresh,
          size: 15,
        );
        break;
      default:
        return Icon(
          Icons.check,
          size: 15,
        );
        break;
    }
  }

  _statusPanel() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.green,
                maxRadius: 5,
                minRadius: 5,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Online',
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.blueAccent,
                maxRadius: 5,
                minRadius: 5,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Processing',
                style: TextStyle(color: Colors.blueAccent),
              )
            ],
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.red,
                maxRadius: 5,
                minRadius: 5,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Offline',
                style: TextStyle(color: Colors.red),
              )
            ],
          )
        ],
      ),
    );
  }

  _appBar() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: <Widget>[
          ClipOval(
              child: Icon(
            Icons.person,
            color: Colors.white,
          )),
          SizedBox(
            width: 5,
          ),
          Text(
            'Data Anggota',
            style: TextStyle(color: Colors.white),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ButtonTheme(
                  minWidth: 2,
                  height: 2,
                  child: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
