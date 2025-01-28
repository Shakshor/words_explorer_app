import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import '../model/books_list_model.dart';

 Future<BooksListModel> getBooksList() async {
  Dio dio = Dio();
  const String booksUrl = 'https://book.snnafi.com/APP/books/books.php';
  String token = 'eyJhbGciOiJIUzM4NCIsInR5cCI6IkpXVCJ9eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkdUQUwgVGVzdCIsImlhdCI6NTY3OTgwOTc4NzY1NDV9zcfrwDjr5P3rZnq2OdcVxPnl1ZFfpdhhjV6F9eoN-nvgpeq36Ihe1Ji_1GkjgUYg';
  try{
    final response = await dio.get(
        booksUrl,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
    );
    if(response.statusCode == 200){
      dynamic responseResult = jsonDecode(response.data);
      // log('data_in_books_list_repo: repo_status:${response.statusCode} data:$responseResult');
      return BooksListModel.fromJson(responseResult);
    }
    else{
      log('Books_list_Repo_Status: ${response.statusCode}');
      throw Exception('Books List Data Error');
    }
  }catch(error){
    log('Books_list_Error');
    rethrow;
  }
}