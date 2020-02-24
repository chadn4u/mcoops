import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:m_coop/models/members.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MainMenu extends StatefulWidget {
  @override
  State < StatefulWidget > createState() => _MainMenuState();

}

class _MainMenuState extends State < MainMenu > {
  final GlobalKey < ScaffoldState > keyScaffold = GlobalKey < ScaffoldState > ();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();

  int groupValue = -1;

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

  void handleValueChange(int value) {
    setState(() {
      groupValue = value;
      switch (groupValue) {
        case 1:
          //Fluttertoast.showToast(msg: 'Ini Pria',toastLength: Toast.LENGTH_SHORT);
          break;
        case 0:
          //Fluttertoast.showToast(msg: 'Ini Wanita',toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });

  }

  Widget _input(String label, String emptyText, TextInputType type) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              width: 1
            )
          )
        ),
        validator: (val) {
          if (val.length == 0) {
            return emptyText;
          } else {
            return null;
          }
        },
        keyboardType: type,
      ),
    );
  }
  Widget _button(String text, Color splashColor, Color highlightColor,
    Color fillColor, Color textColor, void
    function ()) {
    return RaisedButton(
      highlightElevation: 0.0,
      splashColor: splashColor,
      highlightColor: highlightColor,
      elevation: 0.0,
      color: fillColor,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0)),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold, color: textColor, fontSize: 20),
      ),
      onPressed: () {
        function ();
      },
    );
  }
  Widget _panel(ScrollController sc) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        controller: sc,
        children: < Widget > [
          SizedBox(height: 12.0, ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: < Widget > [
              Container(
                width: 30,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(12.0))
                ),
              ),
            ],
          ),

          SizedBox(height: 18.0, ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: < Widget > [
              Text(
                "Add New Data",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 24.0,
                  color: Theme.of(context).primaryColor
                ),
              ),
            ],
          ),
          SizedBox(height: 36.0, ),
          _input('Nama Anggota', 'Nama Anggota tidak boleh kosong', TextInputType.text),
          _input('Email', 'Email tidak boleh kosong', TextInputType.emailAddress),
          SizedBox(height: 10, ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: < Widget > [
              Text('Jenis Kelamin'),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: < Widget > [
                  Radio(
                    groupValue: groupValue,
                    value: 1,
                    onChanged: handleValueChange,
                  ),
                  Text('Pria'),
                  Radio(
                    groupValue: groupValue,
                    value: 0,
                    onChanged: handleValueChange,
                  ),
                  Text('Wanita'),
                ],
              ),
              SizedBox(height: 5, ),
              _input('Telepon', 'Telepon tidak boleh kosong', TextInputType.phone),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Alamat',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        width: 1
                      )
                    )
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(height: 20,)
            ],
          )
        ],
      )
    );
  }
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
      resizeToAvoidBottomInset: true,
      key: keyScaffold,
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: < Widget > [

          SlidingUpPanel(
            maxHeight: MediaQuery.of(context).size.height * 0.8,
            minHeight: 20,
            parallaxEnabled: true,
            parallaxOffset: 1,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
            panelBuilder: (sc) => _panel(sc),
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
          ),
          Positioned(
            top: 10.0,
            right: 1,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(24.0, 18.0, 24.0, 18.0),
                  child: Container(
                    padding: const EdgeInsets.all(7.0),
                      child: Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 8.0,
                        )]
                      ),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}