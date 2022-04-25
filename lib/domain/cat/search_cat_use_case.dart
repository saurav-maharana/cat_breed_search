import 'package:flutter_template/domain/base/usecase/base_async_use_case.dart';
import 'package:flutter_template/services/entity/cat/remote/remote_cat.dart';

abstract class SearchCatUseCase
    extends BaseAsyncUseCase<String, List<RemoteCat>> {}
