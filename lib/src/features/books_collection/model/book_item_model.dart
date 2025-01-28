class BookItemModel{
  final String id;
  final String bookImage;
  final String bookCoverImage;
  final String bookName;
  final String bookWriter;
  final String bookStatus;
  final String bookAvailable;
  final String bookNotAvailable;
  final String bookReview;
  final String bookType;
  final String bookPublisher;
  final String totalRead;
  final String bookAverageReview;
  final String isBookReviewed;
  final String bookCatagory;
  final String bookState;

  BookItemModel({
    required this.id,
    required this.bookImage,
    required this.bookCoverImage,
    required this.bookName,
    required this.bookWriter,
    required this.bookStatus,
    required this.bookAvailable,
    required this.bookNotAvailable,
    required this.bookReview,
    required this.bookType,
    required this.bookPublisher,
    required this.totalRead,
    required this.bookAverageReview,
    required this.isBookReviewed,
    required this.bookCatagory,
    required this.bookState,
  });

  factory BookItemModel.fromJson(Map<String, dynamic> json){
    return BookItemModel(
        id: json['id'],
        bookImage: json['book_image'],
        bookCoverImage: json['book_cover_image'],
        bookName: json['book_name'],
        bookWriter: json['book_writer'],
        bookStatus: json['book_status'],
        bookAvailable: json['book_available'],
        bookNotAvailable: json['book_notavailable'],
        bookReview: json['book_review'],
        bookType: json['book_type'],
        bookPublisher: json['book_publisher'],
        totalRead: json['totalread'],
        bookAverageReview: json['book_average_review'],
        isBookReviewed: json['isbookreviewed'],
        bookCatagory: json['book_catagory'],
        bookState: json['book_state'],
    );
  }
}