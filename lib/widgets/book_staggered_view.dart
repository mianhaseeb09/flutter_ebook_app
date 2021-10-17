import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/models/book.dart';
import 'package:flutter_ebook_app/widgets/book_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BookStaggeredGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;

  BookStaggeredGridView(
      {Key? key,
      required this.selected,
      required this.pageController,
      required this.callback})
      : super(key: key);
  final bookList = Book.generateBooks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
          StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            itemCount: bookList.length,
            staggeredTileBuilder: (_) => const StaggeredTile.fit(2),
            itemBuilder: (_, index) => BookItem(book: bookList[index]),
          ),
          Container(),
          // const Text('Ebooks'),
          // const Text('AudioBooks')
        ],
      ),
    );
  }
}
