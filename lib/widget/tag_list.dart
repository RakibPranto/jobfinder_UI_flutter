import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final taglist = ['All', '⚡ Popular', '⭐ Featured'];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 35,
      child: Center(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: taglist.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: selected == index ? Colors.deepOrange : Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: selected == index ? Colors.transparent : Colors.blue,
                ),
              ),
              child: Text(
                taglist[index],
              ),
            ),
          ),
          separatorBuilder: (_, index) => const SizedBox(
            width: 10,
          ),
        ),
      ),
    );
  }
}
