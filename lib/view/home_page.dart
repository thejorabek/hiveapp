import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiveapp/model/new_model.dart';
import 'package:hiveapp/service/news_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: NewsService.getAllNews(),
        builder: (context, AsyncSnapshot<NewModel> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Has Error With Service'),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data!.articles.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                        title: Text(
                            snapshot.data!.articles[index].author.toString())),
                  );
                });
          }
        },
      ),
    );
  }
}
