import 'package:flutter/material.dart';
import 'package:news_eater/viewpages/constant.dart';
import 'package:news_eater/viewpages/newsView.dart';
class NewsContainer extends StatelessWidget {
  String newsUrl;
  String newsHeading;
  String newsDes;
  String newsImg;
  String newsContent;
 NewsContainer(this.newsContent,this.newsUrl,this.newsHeading,this.newsDes,this.newsImg,{super.key});

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kPrimaryColor,
          boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),)]),
      height: Height,
      width: Width,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      margin: EdgeInsets.only(bottom: 8, right: 8, left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              newsImg,
              height: 250,
              width: Width,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            newsHeading.length>50?newsHeading.substring(0,50):newsHeading,
                //textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
          Text(
              newsDes,
              //textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 15,color: Colors.black38),
            ),

           Text(
                newsContent.length>200?newsContent.substring(0,200):"${newsContent.toString().substring(0,newsContent.length-13)}...",
               softWrap: true,
            overflow: TextOverflow.clip,
                style: TextStyle(
                    fontSize: 17, color: Colors.black),
              ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Newsview(url: newsUrl)));},
                    style: ElevatedButton.styleFrom(backgroundColor: kOrangeColor,foregroundColor: kLightColor),
                    child: Text("see all",style: TextStyle(fontSize: 15),))),
          )
        ],
      ),
    );
  }
}
