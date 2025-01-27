import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> initializeSqliteDatabase() async {
  try{
    // get_the_database_path_on_device
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final dbPath = join(documentsDirectory.path, 'words.db');

    // check_file_exists_or_not
    if(!await File(dbPath).exists()){
      // load_db_from_assets_as_bytes
      ByteData data = await rootBundle.load('assets/sqlite_db/words.db');
      List<int> bytes = data.buffer.asUint8List();

      // write_the_db_local_storage
      await File(dbPath).writeAsBytes(bytes, flush: true);
    }
    return await openDatabase(dbPath);
  }catch(e){
    throw Exception(e.toString());
  }
}