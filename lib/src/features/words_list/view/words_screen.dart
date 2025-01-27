import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:words_explorer_app/src/features/words_list/repository/words_list_repo.dart';
import '../provider/words_provider.dart';

class WordsScreen extends ConsumerWidget {
  const WordsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncWords = ref.watch(wordsAsyncNotifierProvider);
    // final asyncWords = ref.watch(wordsNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Words Screen'),
        centerTitle: true,
      ),

      // body
      body: Column(
        children: [
          // data_check_btn
          ElevatedButton(
            onPressed: (){
              getWordsList();
            },
            child: Text('Future Data'),
          ),
          // data_show
          asyncWords.when(
              error: (error, stacktrace){
                return Text(error.toString());
              },
              loading: (){
                return const CircularProgressIndicator();
              },
              data: (data){
                log('inside_words_screen: $data');
                return Text(data.first.english);
              },
          ),
        ],
      ),
    );
  }
}
