import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hiveapp/core/constants/constant.dart';
import 'package:hiveapp/model/articles_model.dart';
import 'package:hiveapp/model/new_model.dart';
import 'package:hiveapp/model/source_model.dart';
import 'package:hiveapp/view/home_page.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await Hive.initFlutter();
  Hive.registerAdapter(NewModelAdapter());
  Hive.registerAdapter(ArticlesAdapter());
  Hive.registerAdapter(SourceAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Constants.ligthTheme,
      debugShowCheckedModeBanner: false,
      darkTheme: Constants.darkTheme,
      home: const HomePage(),
    );
  }
}
