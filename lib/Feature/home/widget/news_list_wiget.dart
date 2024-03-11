
import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/widget/tab_item_widget.dart';
import 'package:news_app/models/sourceModelData.dart';

class NewsList extends StatefulWidget {
  final List<Sources> sourceList;
   NewsList({super.key,required this.sourceList});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(length:widget.sourceList.length , child:
        TabBar(
          onTap: (value){
            selectedIndex=value;
            setState(() {
            });
          },
          padding: EdgeInsets.symmetric(vertical: 10),
          isScrollable: true,
          dividerColor: Colors.transparent,
          labelPadding: EdgeInsets.symmetric(horizontal: 6),
          indicator: BoxDecoration(),
          tabs: widget.sourceList
              .map((e) => TabItemWidget(sourceModel: e, isselected:
          selectedIndex ==  widget.sourceList.indexOf(e)))
              .toList(),
        ),
        )
      ],
    ) ;
  }
}
