import 'package:flutter/material.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 4,
          itemBuilder: (context, Index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
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
                      "https://www.shutterstock.com/shutterstock/photos/2240084847/display_1500/stock-vector-young-man-anime-style-character-vector-illustration-design-manga-anime-boy-black-hair-faces-2240084847.jpg",
                      height: 250,
                      width: Width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final width = constraints.maxWidth;
                      var fontSize = 26.0;
                      if (width <= 480) {
                        fontSize = 26.0;
                      } else if (width > 480 && width <= 960) {
                        fontSize = 32.0;
                      } else {
                        fontSize = 38.0;
                      }
                      return Text(
                        'Syncing files to device Infinix X671B',
                        //textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: fontSize, fontWeight: FontWeight.bold),
                      );
                    },
                  ),
                  LayoutBuilder(builder: (context, constraints) {
                    final width = constraints.maxWidth;
                    var fontSize = 16.0;
                    if (width <= 480) {
                      fontSize = 16.0;
                    } else if (width > 480 && width <= 960) {
                      fontSize = 22.0;
                    } else {
                      fontSize = 28.0;
                    }
                    return Text(
                      'Syncing files to device Infinix X671B',
                      //textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: fontSize, fontWeight: FontWeight.bold),
                    );
                  }),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("see all"))),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
