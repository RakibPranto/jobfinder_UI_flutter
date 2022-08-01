import 'package:flutter/material.dart';
import 'package:jobfinder/widget/job_list.dart';
import 'package:jobfinder/widget/search_con.dart';
import 'package:jobfinder/widget/tag_list.dart';
import 'package:jobfinder/widget/top_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  void updateTabSelection(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 35,
        child: FloatingActionButton(
          backgroundColor: Colors.yellow.shade700,
          onPressed: () {},
          elevation: 4.0,
          child: Container(
            margin: const EdgeInsets.all(15.0),
            child: const Center(child: Icon(Icons.add)),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          margin: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  updateTabSelection(0);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.home,
                  color: selectedIndex == 0
                      ? Colors.yellow.shade500
                      : Colors.grey.shade500,
                ),
              ),
              IconButton(
                onPressed: () {
                  updateTabSelection(1);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.notifications_paused_outlined,
                  color: selectedIndex == 1
                      ? Colors.yellow.shade500
                      : Colors.grey.shade500,
                ),
              ),
              const SizedBox(
                width: 50.0,
              ),
              IconButton(
                onPressed: () {
                  updateTabSelection(2);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.post_add_outlined,
                  color: selectedIndex == 2
                      ? Colors.yellow.shade500
                      : Colors.grey.shade500,
                ),
              ),
              IconButton(
                onPressed: () {
                  updateTabSelection(3);
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.favorite_outline,
                  color: selectedIndex == 3
                      ? Colors.yellow.shade500
                      : Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(flex: 2, child: Container(color: Colors.white)),
              Expanded(
                  flex: 1,
                  child: Container(color: Colors.grey.withOpacity(0.1))),
            ],
          ),
          SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const TopAppBar(),
                  const SearchCon(),
                  const TagList(),
                  const SizedBox(
                    height: 18,
                  ),
                  JobList()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
