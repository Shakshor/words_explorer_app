import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:words_explorer_app/src/features/books_collection/provider/books_provider.dart';
import 'package:words_explorer_app/src/features/books_collection/repository/books_list_repo.dart';

class BooksScreen extends ConsumerWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextScaler fontScaler = MediaQuery.textScalerOf(context);
    final asyncBooks = ref.watch(booksAsyncNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: const Text(
          'Books Screen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          /*// data_check_btn
          ElevatedButton(
            onPressed: (){
              getBooksList();
            },
            child: const Text('Future Data'),
          ),*/

          // data_show
          Flexible(
            flex: 1,
            child: asyncBooks.when(
                loading: (){
                  return const Center(
                      child: CircularProgressIndicator()
                  );
                },
                error: (error, stacktrace){
                  return Center(
                      child: Text(error.toString()),
                  );
                },
                data: (data){
                  log('inside_books_screen books_dat: $data');
                  return ListView.builder(
                    itemCount: data.booksItemsContent.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.yellow.shade50,
                        child: ListTile(
                          // leading: Image.network(
                          //   data.booksItemsContent[index].bookImage.toString(),
                          //   // errorBuilder: (context, error, stacktrace){
                          //   //   return const Icon(Icons.broken_image);
                          //   // },
                          //   fit: BoxFit.fitWidth,
                          // ),
                          title: Text(
                              data.booksItemsContent[index].bookName.toString(),
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontScaler.scale(18),
                            ),
                          ),
                          subtitle: Text(
                              data.booksItemsContent[index].bookWriter.toString(),
                          ),
                          trailing: TextButton(
                            onPressed: (){},
                            child: const Text(
                                'See Details',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
            ),
          ),
        ],
      ),
    );
  }
}

