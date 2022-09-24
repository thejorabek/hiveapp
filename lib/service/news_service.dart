import 'package:dio/dio.dart';
import 'package:hiveapp/core/constants/constant.dart';
import 'package:hiveapp/model/new_model.dart';

class NewsService {
  static Future<NewModel> getAllNews() async {
    Response res = await Dio().get(Constants.kIpAdress);
    return res.data;
  }
}
