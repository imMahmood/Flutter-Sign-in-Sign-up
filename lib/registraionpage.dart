import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insert/Sqflite.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  late Sqlprovider de;
  TextEditingController name = TextEditingController();
  TextEditingController last = TextEditingController();
  TextEditingController mail = TextEditingController();
  TextEditingController DOB = TextEditingController();
  TextEditingController adress = TextEditingController();
  TextEditingController PhoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              keyboardType: TextInputType.text,
              controller: name,
              textCapitalization: TextCapitalization.characters,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                labelText: 'Last',
              ),
              keyboardType: TextInputType.text,
              controller: last,
              textCapitalization: TextCapitalization.characters,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                labelText: 'Mail',
              ),
              keyboardType: TextInputType.emailAddress,
              controller: mail,
              textCapitalization: TextCapitalization.characters,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                labelText: 'Adress',
              ),
              keyboardType: TextInputType.text,
              controller: adress,
              textCapitalization: TextCapitalization.characters,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                labelText: 'Date Of Birth',
              ),
              keyboardType: TextInputType.datetime,
              controller: DOB,
              textCapitalization: TextCapitalization.characters,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                labelText: 'PhoneNumber',
              ),
              keyboardType: TextInputType.number,
              controller: PhoneNumber,
              textCapitalization: TextCapitalization.characters,
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    //de.insert();
                    // details(name.text, last.text, mail.text, adress.text,
                    //     DOB.text, PhoneNumber.text);
                  });
                },
                splashColor: Colors.red,
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(12),
                  width: 123,
                  height: 45,
                  color: Colors.lightBlueAccent,
                  duration: Duration(seconds: 4),
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void _secound(BuildContext context) {}
}
