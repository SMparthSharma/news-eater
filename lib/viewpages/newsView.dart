import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
class Newsview extends StatefulWidget {
  String url;
  Newsview({super.key,required this.url});

  @override
  State<Newsview> createState() => _NewsviewState();
}

class _NewsviewState extends State<Newsview> {
  late String finalUrl;
  @override
  void initState() {
    if(widget.url.contains('http://')){
      finalUrl=widget.url.toString().replaceAll('http://', 'https://');
    }
    else{
      finalUrl=widget.url;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return SafeArea(child: Scaffold(

      body: Stack(
        children: [
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: InAppWebView(
                initialUrlRequest:
                URLRequest(url: WebUri(finalUrl)),


              ),

            ),
          ),

        ],
      ),
    ));
  }
}
