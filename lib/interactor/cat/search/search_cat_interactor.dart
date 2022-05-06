import 'package:flutter_template/domain/entity/cat/cat.dart';

abstract class SearchCatInteractor {
  List<Cat> get searchCatResults;
  Future<void> search(String searchTerm);
}
