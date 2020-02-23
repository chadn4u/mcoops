import 'package:flutter/material.dart';
import 'package:m_coop/models/members.dart';

class MainMenu extends StatefulWidget {
  @override
  State < StatefulWidget > createState() => _MainMenuState();

}

class _MainMenuState extends State < MainMenu > {
  final GlobalKey <ScaffoldState> keyScaffold = GlobalKey<ScaffoldState>();
  final List < Member > lstMember = [
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 1),
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 0),
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 1),
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 0),
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 1),
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 0),
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 1),
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 0),
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 1),
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 0),
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 1),
    Member('Ubaidillah', '312312312', 'Jakarta,31 -02 - 1978', 'Ubaidillah@gmail.com', 'Pria', '08112322234', 'Kampung Karang Kendal', 1),
  ];

  @override
  Widget build(BuildContext context) {
    _cardItem(Member member) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          color: Colors.white,
          border: Border.all(width: 1),

        ),
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(3),
        child: ListTile(
          leading: Container(
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: member.status == 1 ? Colors.lightGreen : Colors.red),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: < Widget > [
              Text(member.namaAnggota,
                style: TextStyle(
                  fontSize: 12
                ),
              ),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: < Widget > [
              Text(member.alamat)
            ],
          ),
        ),
      );
    }

    return Scaffold(
      key: keyScaffold,
      extendBody: true,
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemBuilder: (ctx, idx) {
            return _cardItem(lstMember[idx]);
          },
          itemCount: lstMember.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        child: BottomAppBar(
          color: Theme.of(context).primaryColor,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: < Widget > [
              IconButton(
                iconSize: 22,
                padding: EdgeInsets.only(left: 20),
                color: Colors.white,
                icon: Icon(Icons.arrow_back_ios), onPressed: () {
                  Navigator.of(context).pop();
                }),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add, color: Colors.white, )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}