import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:words_explorer_app/src/features/words_list/model/word_item_model.dart';
import '../../../services/sqlite_db_init.dart';

Future<List<WordItemModel>> getWordsList() async {
  final db = await initializeSqliteDatabase();
  List<Map<String, Object?>> results = await db.query('words');
  log('inside_words_list_repo: $results');

  return results.map((word){
    return WordItemModel.fromTableJson(word);
  }).toList();
}