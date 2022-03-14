import 'package:flutter/material.dart';

class secoundscreen extends StatelessWidget {
  String name;
  String last;
  String mail;
  String adress;
  String dob;
  String number;
  secoundscreen(
      {required this.name,
      required this.last,
      required this.mail,
      required this.adress,
      required this.dob,
      required this.number,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entered Details'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('name is $name'),
              Text('last name is $last'),
              Text('mail is $mail'),
              Text('adress is $adress'),
              Text('Date OF Birth is $dob'),
              Text('Number is $number'),
            ],
          ),
        ));
  }
}
