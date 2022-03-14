class details {
  String name;
  String last;
  String mail;
  String adress;
  String dob;
  String number;
  details(this.name, this.last, this.mail, this.adress, this.dob, this.number);
  factory details.Frommap(Map<String, dynamic> map) {
    return details(map['name'], map['last'], map['mail'], map['adress'],
        map['dob'], map['number']);
  }

  //secoundscreen({name:name,last:last})
// Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //       builder: (context) => secoundscreen(
  //             name: name.text,
  //             last: last.text,
  //             mail: mail.text,
  //             adress: adress.text,
  //             dob: DOB.text,
  //             number: PhoneNumber.text,
  //           )));
}
