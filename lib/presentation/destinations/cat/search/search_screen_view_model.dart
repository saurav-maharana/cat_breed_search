import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/presentation/base/view_model_provider/base_view_model.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_state.dart';
import 'package:flutter_template/presentation/entity/screen/screen.dart';
import 'package:get_it/get_it.dart';

final catSearchViewModelProvider =
    StateNotifierProvider.autoDispose<CatSearchViewModel, CatSearchScreenState>(
        (ref) => GetIt.I.get());

abstract class CatSearchViewModel
    extends BaseViewModel<CatSearchScreen, CatSearchScreenState> {
  CatSearchViewModel(CatSearchScreenState state) : super(state);

  String get searchTerm;
}
