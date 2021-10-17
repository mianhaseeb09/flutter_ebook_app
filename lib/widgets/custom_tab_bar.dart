import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/constants/colors.dart';

class CustomTabBar extends StatelessWidget {
  final int selected;
  final Function callback;
  final tabs = ['Ebook', 'AudioBook'];

  CustomTabBar({Key? key, required this.selected, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
      width: width,
      height: 56,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  alignment: Alignment.center,
                  width: (width - 40) / 2 - 10,
                  decoration: BoxDecoration(
                      color:
                          selected == index ? Colors.white : Colors.grey[200],
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    tabs[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, color: kFont),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
          itemCount: tabs.length),
    );
  }
}
