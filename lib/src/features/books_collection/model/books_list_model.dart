import 'book_item_model.dart';

class BooksListModel{
  final int page;
  final int perPage;
  final int totalBooks;
  final int totalPages;
  List<BookItemModel> booksItemsContent;

  BooksListModel({
    required this.page,
    required this.perPage,
    required this.totalBooks,
    required this.totalPages,
    required this.booksItemsContent,
  });

  factory BooksListModel.fromJson(Map<String, dynamic> json){
    List<BookItemModel> booksList = [];
    if(json['books'] != null){
      json['books'].forEach((singleBook){
        return booksList.add(BookItemModel.fromJson(singleBook));
      });
    }

    return BooksListModel(
        page: json['page'],
        perPage: json['per_page'],
        totalBooks: json['total_books'],
        totalPages: json['total_pages'],
        booksItemsContent: booksList,
    );
  }
}