import 'package:flutter_template/repository/cat/domain_cat_mapper.dart';
import 'package:flutter_template/services/cat/remote/cat_remote_service.dart';
import 'package:flutter_template/services/entity/cat/remote/remote_cat.dart';

class CatRepositoryImpl implements CatRemoteService {
  late final CatRemoteService catRemoteService;

  late final DomainCatMapper domainCatMapper;

  CatRepositoryImpl({
    required this.catRemoteService,
    required this.domainCatMapper,
  });

  @override
  Future<List<RemoteCat>> searchCat({required String searchTerm}) async {
    final results = await catRemoteService.searchCat(
      searchTerm: searchTerm,
    );
    return domainCatMapper.map(results);
  }
}
