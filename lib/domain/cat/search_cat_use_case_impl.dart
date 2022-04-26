import 'package:flutter_template/domain/cat/search_cat_use_case.dart';
import 'package:flutter_template/repository/cat/cat_repository.dart';
import 'package:flutter_template/services/entity/cat/remote/remote_cat.dart';

class SearchCatUseCaseImpl extends SearchCatUseCase {
  final CatRepository catRepository;

  SearchCatUseCaseImpl({
    required this.catRepository,
  });

  @override
  Future<List<RemoteCat>> callInternal(String param) async {
    return catRepository.searchCat(param);
  }
}
