import 'package:flutter/material.dart';
import 'package:words_explorer_app/src/features/books_collection/view/books_screen.dart';
import 'package:words_explorer_app/src/features/words_list/view/words_screen.dart';
import 'home_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WordsExplorer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // home: const WordsScreen(),
      home: const HomePage(),
    );
  }
}