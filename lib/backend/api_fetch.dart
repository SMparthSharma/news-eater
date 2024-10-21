import 'dart:convert';
import 'dart:math'as math;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:http/http.dart';
import 'package:news_eater/backend/model.dart';

class ApiFetch{
  static List sourcesId = [
    "abc-news",

    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",

    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",

    "national-geographic",

    "news24",
    "new-scientist",

    "new-york-magazine",
    "next-big-future",

    "techcrunch",
    "techradar",

    "the-hindu",

    "the-wall-street-journal",

    "the-washington-times",
    "time",
    "usa-today",

  ];

  static Future<NewsArt> fetchNews() async{
    final  random= math.Random();
    var source = sourcesId[random.nextInt(sourcesId.length)];

    Response response=await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$source&apiKey=${dotenv.env['APIKEY']}"));


      Map newsData=jsonDecode(response.body);

      List articles=newsData["articles"];
      final myRandom=math.Random();
      var myArticles=articles[myRandom.nextInt(articles.length)];
   return NewsArt.formAPItoApp(myArticles);

  }

}