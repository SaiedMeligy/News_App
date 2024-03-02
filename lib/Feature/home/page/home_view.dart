
import 'package:flutter/material.dart';
import 'package:news_app/core/widget/custom_background_widget.dart';

class HomeView extends StatelessWidget {

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
        centerTitle: true,
      ),
      body: Column(
        children: [

          CustomBackgroundWidget(child: Image.asset("assets/images/pattern.png")),

        ],
      ),
    );
  }
}
