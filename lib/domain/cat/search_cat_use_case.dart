import 'package:flutter_template/domain/base/usecase/base_async_use_case.dart';
import 'package:flutter_template/domain/entity/cat/cat.dart';

abstract class SearchCatUseCase extends BaseAsyncUseCase<String, List<Cat>> {}
