import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:words_explorer_app/src/features/books_collection/provider/books_provider.dart';
import 'package:words_explorer_app/src/features/books_collection/repository/books_list_repo.dart';

class BooksScreen extends ConsumerWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncBooks = ref.watch(booksAsyncNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Books screen'),
        centerTitle: true,
      ),

      body: Column(
        children: [
          // data_check_btn
          ElevatedButton(
            onPressed: (){
              getBooksList();
            },
            child: Text('Future Data'),
          ),
          // data_show
          asyncBooks.when(
              data: (data){
                return Text(data.totalBooks.toString());
              },
              error: (error, stacktrace){
                return Text(error.toString());
              },
              loading: (){
                return CircularProgressIndicator();
              }
          ),
        ],
      ),
    );
  }
}

