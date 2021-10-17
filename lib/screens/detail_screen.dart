import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/constants/colors.dart';
import 'package:flutter_ebook_app/models/book.dart';
import 'package:flutter_ebook_app/widgets/book_cover.dart';
import 'package:flutter_ebook_app/widgets/book_detail.dart';
import 'package:flutter_ebook_app/widgets/book_review.dart';

class DetailScreen extends StatelessWidget {
  final Book book;

  const DetailScreen({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookDetail(book: book),
            BookCover(book: book),
            BookReview(book: book)
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back_ios_outlined, color: kFont),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz_outlined, color: kFont),
        ),
      ],
    );
  }
}
