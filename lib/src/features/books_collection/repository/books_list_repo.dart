import 'dart:developer';
import 'package:dio/dio.dart';
import '../model/books_list_model.dart';

// Future<BooksListModel>

 Future<void> getBooksList() async {
  Dio dio = Dio();
  const String booksUrl = 'https://book.snnafi.com/APP/books/books.php';
  String token = 'eyJhbGciOiJIUzM4NCIsInR5cCI6IkpXVCJ9eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkdUQUwgVGVzdCIsImlhdCI6NTY3OTgwOTc4NzY1NDV9zcfrwDjr5P3rZnq2OdcVxPnl1ZFfpdhhjV6F9eoN-nvgpeq36Ihe1Ji_1GkjgUYg';
  try{
    final response = await dio.get(
        booksUrl,
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
        }
      )
    );
    if(response.statusCode == 200){
      log('data_in_books_list_repo: ${response.data}');
    }
    else{
      log('Books_list_Error_Status: ${response.statusCode}');
    }
  }catch(eroor, stacktrace){
    log('Books_list_Error');
  }
}