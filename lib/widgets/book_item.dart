import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/models/book.dart';
import 'package:flutter_ebook_app/screens/detail_screen.dart';

class BookItem extends StatelessWidget {
  final Book book;

  const BookItem({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DetailScreen(book: book))),
      child: Container(
        height: book.height as double,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(book.imUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
