import 'package:flutter_template/domain/entity/cat/cat.dart';
import 'package:flutter_template/repository/cat/cat_repository.dart';
import 'package:flutter_template/repository/cat/domain_cat_mapper.dart';
import 'package:flutter_template/services/cat/remote/cat_remote_service.dart';

class CatRepositoryImpl implements CatRepository {
  final CatRemoteService catRemoteService;
  final DomainCatMapper domainCatMapper;

  CatRepositoryImpl({
    required this.catRemoteService,
    required this.domainCatMapper,
  });

  @override
  Future<List<Cat>> searchCat(String searchTerm) async {
    final result = await catRemoteService.searchCat(searchTerm: searchTerm);

    return domainCatMapper.mapList(result);
  }
}
