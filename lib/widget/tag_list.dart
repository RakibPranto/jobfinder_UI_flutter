import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  var selected = 0;

  final taglist = ['All', '⚡ Popular', '⭐ Featured'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: taglist.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selected = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: selected == index ? const Color(0xffd6ebee) : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: selected == index
                    ? Colors.transparent
                    : Colors.blue.withOpacity(0.6),
              ),
            ),
            child: Text(
              taglist[index],
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
