import 'dart:async';

import 'package:flutter_template/domain/cat/search_cat_use_case.dart';
import 'package:flutter_template/domain/entity/cat/cat.dart';
import 'package:flutter_template/foundation/logger/logger.dart';
import 'package:flutter_template/interactor/cat/search/search_cat_interactor.dart';

class SearchCatInteractorImpl extends SearchCatInteractor {
  late final SearchCatUseCase searchCatUseCase;
  final List cats = [];

  final StreamController<List<Cat>> _streamController = StreamController();

  @override
  Future<void> search(String searchTerm) async {
    final searchResults = await searchCatUseCase(param: searchTerm);

    searchResults.when(
      success: ((data) => _streamController.sink.add(data)),
      error: ((e) => log.e(
          "Search Cat Implemetation: Search $searchTerm returned error. $e")),
    );
  }
}
