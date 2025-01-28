import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:words_explorer_app/src/features/words_list/components/words_row_widget.dart';
import '../provider/words_provider.dart';

class WordsScreen extends ConsumerWidget {
  const WordsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextScaler fontScaler = MediaQuery.textScalerOf(context);
    final asyncWords = ref.watch(wordsAsyncNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: const Text(
            'Words Screen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      // body
      body: Column(
        children: [
          // // data_check_btn
          // ElevatedButton(
          //   onPressed: (){
          //     getWordsList();
          //   },
          //   child: Text('Future Data'),
          // ),

          // data_show
          Flexible(
            flex: 1,
            child: asyncWords.when(
                error: (error, stacktrace){
                  return Text(error.toString());
                },
                loading: (){
                  return const CircularProgressIndicator();
                },
                data: (data){
                  // log('inside_words_screen: $data');
                  // return Text(data.first.english);
                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      // final WorldItemModel word = data.;
                      return Card(
                        margin: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // words_showing
                            Flexible(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // arabic
                                  WordsRowWidget(
                                      dynamicTitle: 'Arabic',
                                      dynamicWordData: data[index].arabic,
                                  ),
                                  // english
                                  WordsRowWidget(
                                      dynamicTitle: 'English',
                                      dynamicWordData: data[index].english,
                                  ),
                                ],
                              ),
                            ),
                            // icon
                            Flexible(
                              flex: 1,
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: (){},
                                      icon: Icon(
                                        Icons.favorite_outline,
                                      )
                                  ),
                                ],
                              ),
                            )
                          ],
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
