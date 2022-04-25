import 'package:flutter_template/services/entity/cat/remote/remote_cat.dart';

abstract class CatRepository {
  Future<List<RemoteCat>> searchCat(String searchTerm);
}
