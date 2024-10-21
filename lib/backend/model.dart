class NewsArt{

  String newsUrl;
  String newsHeading;
  String newsDes;
  String newsImg;
  String newsContent;
  NewsArt({required this.newsContent, required this.newsDes, required this.newsHeading, required this.newsImg, required this.newsUrl});
 static NewsArt formAPItoApp(Map<String,dynamic> article){
    return NewsArt(
        newsContent:article['content']??'__',
        newsDes:article['description']??'__',
        newsHeading:article['title']??'__',
        newsImg:article['urlToImage']??'https://cdn.pixabay.com/photo/2017/06/26/19/03/news-2444778_960_720.jpg',
        newsUrl:article['url']??'https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN%3Aen'
    );
  }
}