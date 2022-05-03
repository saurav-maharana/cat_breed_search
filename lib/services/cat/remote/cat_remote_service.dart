import 'package:flutter_template/services/entity/cat/remote/remote_cat.dart';

abstract class CatRemoteService {
  Future<List<RemoteCat>> searchCat({required String searchTerm});
}
