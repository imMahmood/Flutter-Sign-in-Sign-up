import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'details.dart';

class Sqlprovider {
  Sqlprovider._();
  static final Sqlprovider db = Sqlprovider._();
  late Database _database;
  Future<Database> get database async {
    if (_database != null) {
      return database;
    }
    _database = await init();
    return _database;
  }

  init() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'database.db');
    return await openDatabase(path,
        version: 1, onOpen: (db) {}, onCreate: _oncreate);
  }

  _oncreate(Database db, int version) async {
    await db.execute('''
     CREATE TABLE details
     ( name TEXT,
     lastname TEXT,
     mail TEXT,
     adress TEXT,
     Dateofbirth INTEGER,
     number INTEGER)
     ''');
    insert(details d) async {
      final db = await database;
      Map<String, dynamic> row = {
        'name': d.name,
        'lastname': d.last,
        'mail': d.mail,
        'adress': d.adress,
        'Dateofbirth': d.dob,
        'number': d.number
      };
      var result = await db.insert('details', row);
      print(await db.query('details'));
    }
  }
}
