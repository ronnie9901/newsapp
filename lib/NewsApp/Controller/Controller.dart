

import 'package:get/get.dart';
import 'package:newsapp/NewsApp/ApiHelper/Hepler.dart';
import 'package:newsapp/NewsApp/Modal/Modal.dart';

class NewController extends GetxController{

  NewsModal? newsModal;

  ApiHelper apihelper = ApiHelper();

  Future<NewsModal?> frommap() async {
     final   data = await apihelper.fatchdata();
    newsModal =NewsModal.fromJson(data);
     return newsModal;
  }
  Future<NewsModal?> frommap2() async {
    final   data = await apihelper.fatchdata2();
    newsModal =NewsModal.fromJson(data);
    return newsModal;
  }
  Future<NewsModal?> frommap3() async {
    final   data = await apihelper.fatchdata3();
    newsModal =NewsModal.fromJson(data);
    return newsModal;
  }
  Future<NewsModal?> frommap4() async {
    final   data = await apihelper.fatchdata4();
    newsModal =NewsModal.fromJson(data);
    return newsModal;
  }
  Future<NewsModal?> frommap5() async {
    final   data = await apihelper.fatchdata4();
    newsModal =NewsModal.fromJson(data);
    return newsModal;
  }



}