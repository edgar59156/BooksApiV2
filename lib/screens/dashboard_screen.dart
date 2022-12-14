//import 'package:books/app/constants/constants.dart';

import 'package:books/widgets/books/adventure_books.dart';
import 'package:books/widgets/books/horror.dart';
import 'package:books/widgets/books/novel.dart';
import 'package:flutter/material.dart';

import '../widgets/books/anime_books.dart';
import '../widgets/books/popular_books.dart';
import '../widgets/headline.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

final TextEditingController searchController = TextEditingController();

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height / 2,
              child: Stack(
                children: [
                  Container(
                    height: height / 2,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45),
                      ),
                    ),
                    child: SafeArea(
                      
                      minimum: const EdgeInsets.all(16),
                      child: Column(
                      
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Text("G Books",
                              style: Theme.of(context).textTheme.headline1),
                          const Spacer(),
                      
                          const Spacer(
                            flex: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Most Popular',
                                  style: TextStyle(fontSize: 32)),
                            ],
                          ),
                          SizedBox(
                            //color: Colors.yellow,
                            height: height / 4.0,
                            child: const Popular(),
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: height / 5.3,
                      //height: constraints.maxHeight * 0.38,
                      margin: const EdgeInsets.only(left: 16),
                    ),
                  ),
                ],
              ),
            ),
            Headline(
              category: "Anime",
              showAll: "Anime",
              color: Colors.yellow[200]!,
            ),
            SizedBox(
              //color: Colors.grey.shade100,
              height: height / 3.4,
              child: const AnimeBooks(),
            ),
            Headline(
              category: "Action & Adventure",
              showAll: "Action & Adventure",
              color: Colors.green[200]!,
            ),
            SizedBox(
              //color: Colors.yellow,
              height: height / 3.4,
              
              child: const AdevntureBooks(),
            ),
            Headline(
              category: "Novel",
              showAll: "Novel",
              color: Colors.pink[200]!,
            ),
            SizedBox(
              //color: Colors.yellow,
              height: height / 3.4,
              child: const NovelBooks(),
            ),
            Headline(
              category: "Horror",
              showAll: "Horror",
              color: Colors.red!,
            ),
            SizedBox(
              //color: Colors.yellow,
              height: height / 3.4,
              child: const HorrorBooks(),
              
            ),
          ],
        ),
      ),
    );
  }
}
