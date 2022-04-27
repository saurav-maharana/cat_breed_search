import 'package:flutter_template/repository/cat/cat_repository.dart';
import 'package:flutter_template/services/cat/remote/cat_remote_service.dart';
import 'package:flutter_template/services/entity/cat/remote/remote_cat.dart';

class CatRepositoryImpl implements CatRepository {
  final CatRepository catRepository;
  final CatRemoteService catRemoteService;

  CatRepositoryImpl({
    required this.catRepository,
    required this.catRemoteService,
  });

  @override
  Future<List<RemoteCat>> searchCat(String searchTerm) async {
    final result = await catRepository.searchCat(searchTerm);

    return result;
  }
}
