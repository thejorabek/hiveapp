import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hiveapp/model/articles_model.dart';
import 'package:hiveapp/model/new_model.dart';
import 'package:hiveapp/service/news_service.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var box = Hive.box('news');
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: NewsService.getAllNews(),
        builder: (context, AsyncSnapshot<NewModel> snapshot) {
          if (!snapshot.hasData) {
            return ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Shimmer(
                      direction: ShimmerDirection.ltr,
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 218, 218, 218),
                        Color.fromARGB(255, 143, 143, 143)
                      ]),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15)),
                        width: width * .5,
                        height: height * .3,
                        margin: EdgeInsets.fromLTRB(
                            width * .03, height * .02, width * .03, 0),
                      ));
                });
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Has Error With Service'),
            );
          } else {
            List<Articles> articles = box.get('articles');
            return ListView.builder(
                itemCount: snapshot.data!.articles.length,
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                      width: width * .5,
                      height: height * .3,
                      margin: EdgeInsets.fromLTRB(
                          width * .03, height * .02, width * .03, 0),
                      child: Column(children: [
                        Expanded(
                          flex: 1,
                          child: Row(children: [
                            Expanded(
                              child: SizedBox(
                                  child: Image.network(articles[index].urlToImage,fit: BoxFit.cover,)),
                              flex: 1,
                            ),
                            Expanded(
                              child: Text(snapshot.data!.articles[index].author
                                  .toString()),
                              flex: 1,
                            ),
                          ]),
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(snapshot
                                .data!.articles[index].description
                                .toString()))
                      ]));
                });
          }
        },
      ),
    );
  }
}
