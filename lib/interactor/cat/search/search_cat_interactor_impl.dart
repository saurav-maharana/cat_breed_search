import 'dart:async';
import 'package:flutter_template/domain/cat/search_cat_use_case.dart';
import 'package:flutter_template/domain/entity/cat/cat.dart';
import 'package:flutter_template/foundation/logger/logger.dart';
import 'package:flutter_template/interactor/cat/search/search_cat_interactor.dart';

class SearchCatInteractorImpl extends SearchCatInteractor {
  final SearchCatUseCase searchCatUseCase;
  final List<Cat> _searchCatResult = [];

  SearchCatInteractorImpl({required this.searchCatUseCase});

  @override
  Future<void> search(String searchTerm) async {
    final searchResults = await searchCatUseCase(param: searchTerm);

    searchResults.when(
      success: ((data) {
        _searchCatResult.clear();
        _searchCatResult.addAll(data);
      }),
      error: ((e) => log.e(
          "Search Cat Implemetation: Search $searchTerm returned error. $e")),
    );
  }

  @override
  List<Cat> get searchCatResults => _searchCatResult;
}
