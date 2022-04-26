import 'package:flutter_template/repository/cat/cat_repository.dart';
import 'package:flutter_template/repository/cat/domain_cat_mapper.dart';
import 'package:flutter_template/services/entity/cat/remote/remote_cat.dart';

class CatRepositoryImpl implements CatRepository {
  final CatRepository catRepository;
  final DomainCatMapper domainCatMapper;

  CatRepositoryImpl({
    required this.catRepository,
    required this.domainCatMapper,
  });

  @override
  Future<List<RemoteCat>> searchCat(String searchTerm) async {
    final result = await catRepository.searchCat(searchTerm);

    return result;
  }
}
