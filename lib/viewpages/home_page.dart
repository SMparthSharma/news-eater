import 'package:flutter/material.dart';
import 'package:news_eater/backend/api_fetch.dart';
import 'package:news_eater/backend/model.dart';

import 'package:news_eater/viewpages/constant.dart';
import 'package:news_eater/viewpages/widget/news_container.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late NewsArt newArt;
  getNews()async{
    newArt=await ApiFetch.fetchNews();
    setState(() {

    });
  }
  @override
  void initState() {
    getNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:kLightColor,
      body: SafeArea(
        child: PageView.builder(

          scrollDirection: Axis.vertical,
          controller: PageController(initialPage: 0),
          onPageChanged: (value){getNews();},
          itemBuilder: (context, index) {

            return NewsContainer(newArt.newsContent, newArt.newsUrl, newArt.newsHeading, newArt.newsDes, newArt.newsImg);
          },
        ),
      ),
    );
  }
}
