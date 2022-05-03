import 'package:dio/dio.dart';
import 'package:flutter_template/services/cat/remote/cat_remote_service.dart';
import 'package:flutter_template/services/entity/cat/remote/remote_cat.dart';

class CatRemoteServiceImpl implements CatRemoteService {
  @override
  Future<List<RemoteCat>> searchCat({required String searchTerm}) async {
    final response = await Dio()
        .get('https://api.thecatapi.com/v1/breeds/search?', queryParameters: {
      "q": searchTerm,
    });
    return (response.data as List)
        .map((e) => RemoteCat.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
