import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:words_explorer_app/src/features/books_collection/view/books_screen.dart';
import 'package:words_explorer_app/src/features/words_list/view/words_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Home Screen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // words
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const WordsScreen()));
                },
                child: const Card(
                  child: Padding(
                    padding:  EdgeInsets.all(30.0),
                    child: Center(
                        child: Text('Words')
                    ),
                  ),
                ),
              ),
              // books
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BooksScreen()));
                },
                child: const Card(
                  child: Padding(
                    padding:  EdgeInsets.all(30.0),
                    child: Center(
                        child: Text('Books')
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
