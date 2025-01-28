import 'dart:async';
import'package:riverpod/riverpod.dart';
import 'package:words_explorer_app/src/features/words_list/model/word_item_model.dart';
import 'package:words_explorer_app/src/features/words_list/repository/words_list_repo.dart';

final wordsAsyncNotifierProvider = AsyncNotifierProvider<WordsAsyncNotifier, List<WordItemModel>>((){
  return WordsAsyncNotifier();
});

class WordsAsyncNotifier extends AsyncNotifier<List<WordItemModel>>{
  Future<List<WordItemModel>> fetchWordsList() async {
    return await getWordsList();
  }

  @override
  Future<List<WordItemModel>> build() async {
    // TODO: implement build
    return await fetchWordsList();
  }
}