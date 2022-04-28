import 'package:flutter_template/domain/entity/cat/cat.dart';

abstract class CatRepository {
  Future<List<Cat>> searchCat(String searchTerm);
}
