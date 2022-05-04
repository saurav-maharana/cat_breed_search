import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_state.dart';
import 'package:get_it/get_it.dart';

import '../../../base/view_model_provider/base_view_model.dart'; // convert to package import
import '../../../entity/screen/screen.dart'; // convert to package import

final catSearchViewModelProvider =
    StateNotifierProvider.autoDispose<CatSearchViewModel, CatSearchScreenState>(
        (ref) => GetIt.I.get());

abstract class CatSearchViewModel
    extends BaseViewModel<CatSearchScreen, CatSearchScreenState> {
  CatSearchViewModel(CatSearchScreenState state) : super(state);

  String get searchTerm;
}
