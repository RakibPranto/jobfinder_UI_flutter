import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jobfinder/widget/search_con.dart';
import 'package:jobfinder/widget/tag_list.dart';
import 'package:jobfinder/widget/top_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Column(
            children: [TopAppBar(), SearchCon(), TagList()],
          ),
        ],
      ),
    );
  }
}
