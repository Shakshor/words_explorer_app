import 'dart:async';
import'package:riverpod/riverpod.dart';
import '../model/books_list_model.dart';
import '../repository/books_list_repo.dart';

final booksAsyncNotifierProvider = AsyncNotifierProvider<BooksAsyncNotifier, BooksListModel>((){
  return BooksAsyncNotifier();
});

class BooksAsyncNotifier extends AsyncNotifier<BooksListModel>{
  Future<BooksListModel> fetchBooksList() async {
    return await getBooksList();
  }

  @override
  Future<BooksListModel> build() async {
    // TODO: implement build
    return await fetchBooksList();
  }
}