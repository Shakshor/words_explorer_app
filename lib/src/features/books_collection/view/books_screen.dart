import 'package:flutter/material.dart';
import 'package:words_explorer_app/src/features/books_collection/repository/books_list_repo.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Books screen'),
        centerTitle: true,
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: (){
            getBooksList();
          },
          child: Text('Future Data'),
        ),
      ),
    );
  }
}

