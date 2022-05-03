import 'package:flutter_template/domain/cat/search_cat_use_case.dart';
import 'package:flutter_template/domain/entity/cat/cat.dart';
import 'package:flutter_template/repository/cat/cat_repository.dart';

class SearchCatUseCaseImpl extends SearchCatUseCase {
  final CatRepository catRepository;

  SearchCatUseCaseImpl({
    required this.catRepository,
  });

  @override
  Future<List<Cat>> callInternal(String param) async {
    return catRepository.searchCat(param);
  }
}
