import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/constants/colors.dart';
import 'package:flutter_ebook_app/widgets/book_staggered_view.dart';
import 'package:flutter_ebook_app/widgets/custom_tab_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var tabIndex = 0;
  var bottomIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          CustomTabBar(
            selected: tabIndex,
            callback: (int index) {
              setState(() {
                tabIndex = index;
              });
              pageController.jumpToPage(index);
            },
          ),
          Expanded(
              child: BookStaggeredGridView(
                  selected: tabIndex,
                  pageController: pageController,
                  callback: (int index) => setState(() {
                        tabIndex = index;
                      })))
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_rounded,
            color: kFont,
          )),
      title: const Text(
        'All Books',
        style: TextStyle(color: kFont, fontSize: 18),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: kFont,
            ))
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    final bottoms = [
      Icons.home_outlined,
      Icons.analytics_outlined,
      Icons.keyboard_voice_outlined,
      Icons.bookmark_border_outlined,
      Icons.person_outline,
    ];
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 56,
      width: width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () => setState(() {
            bottomIndex = index;
          }),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: (width - 40) / 5,
            decoration: bottomIndex == index
                ? const BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 3.0, color: Colors.deepOrange)))
                : null,
            child: Icon(bottoms[index],
                size: 30,
                color: bottomIndex == index ? kFont : Colors.grey[400]),
          ),
        ),
        itemCount: bottoms.length,
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
