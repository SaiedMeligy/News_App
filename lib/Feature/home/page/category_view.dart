import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/widget/news_list_wiget.dart';
import 'package:news_app/Feature/home/widget/tab_item_widget.dart';
import 'package:news_app/core/config/network/api_network.dart';
import 'package:news_app/core/widget/custom_background_widget.dart';
import 'package:news_app/models/source_model.dart';

import '../../../models/category_model.dart';

class CategoryView extends StatefulWidget {
  CategoryModel? categoryModel;
  CategoryView({super.key, required this.categoryModel});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    //ApiManager.getDataSource(widget.categoryModel!.id);
    return CustomBackgroundWidget(
        child: FutureBuilder(
            future: ApiManager.getDataSource(widget.categoryModel!.id),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text("Something went wrong"),
                );
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              var sourceList = snapshot.data ?? [];
              return NewsList(sourceList: sourceList);
              //   ListView.builder(
              //   itemBuilder: (context, index) => Text(sourceList[index].name),
              //   itemCount: sourceList.length,
              // );
            }));
  }
}
