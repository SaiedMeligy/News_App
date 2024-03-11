import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/page/category_view.dart';
import 'package:news_app/Feature/home/widget/custom_drawer.dart';
import 'package:news_app/Feature/home/widget/custom_item_widget.dart';
import 'package:news_app/core/config/constant.dart';
import 'package:news_app/core/widget/custom_background_widget.dart';
import 'package:news_app/main.dart';
import 'package:news_app/models/category_model.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<CategoryModel> categoryList = [
    CategoryModel(
        id: "Sports",
        title: 'Sports',
        image: 'assets/images/sports.png',
        backgroundColor: Color(0xffC91C22)),
    CategoryModel(
      id: "Politics",
      title: 'Politics',
      image: 'assets/images/Politics.png',
      backgroundColor: Color(0xff003E90),
    ),
    CategoryModel(
      id: "Health",
      title: 'Health',
      image: 'assets/images/health.png',
      backgroundColor: Color(0xffED1E79),
    ),
    CategoryModel(
      id: "business ",
      title: 'business ',
      image: 'assets/images/bussines.png',
      backgroundColor: Color(0xffCF7E48),
    ),
    CategoryModel(
      id: "Enviroment",
      title: 'Enviroment',
      image: 'assets/images/environment.png',
      backgroundColor: Color(0xff4882CF),
    ),
    CategoryModel(
      id: "Science",
      title: 'Science',
      image: 'assets/images/science.png',
      backgroundColor: Color(0xffF2D352),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            selectedCategory==null? 'News App':selectedCategory!.title, style: Constants.theme.textTheme.titleLarge),
        ),
        drawer: CustomDrawer(onTapDrawer:onTapDrawer),
        body:
        selectedCategory==null?
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Pick your category\n of interest',
                style: Constants.theme.textTheme.bodyLarge!.copyWith(
                  color: Color(0xff4F5A69),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 4 / 5),
                  itemBuilder: (context, index) => CustomItemWidget(
                      index: index,
                      categoryModel: categoryList[index],
                      onCategoryClicked: onCategoryClicked),
                  itemCount: 6,
                ),
              )
            ],
          ),
        ):CategoryView(categoryModel: selectedCategory),
      ),
    );
  }
  CategoryModel? selectedCategory;

  void onCategoryClicked(CategoryModel categoryModel) {
    selectedCategory=categoryModel;
    print(categoryModel.id);
    setState(() {

    });

  }
  void onTapDrawer(){
    setState(() {
      selectedCategory=null;
      navigatorKey.currentState!.pop();
    });
  }
}
