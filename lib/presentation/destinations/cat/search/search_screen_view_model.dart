import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/presentation/base/intent/intent_handler.dart';
import 'package:flutter_template/presentation/base/view_model_provider/base_view_model.dart';
import 'package:flutter_template/presentation/destinations/weather/search/search_screen_intent.dart';
import 'package:flutter_template/presentation/destinations/weather/search/search_screen_state.dart';
import 'package:get_it/get_it.dart';

import '../../../entity/screen/screen.dart';

final searchViewModelProvider =
    StateNotifierProvider.autoDispose<SearchScreen, SearchScreenState>(
        (ref) => GetIt.I.get());

abstract class CatSearchViewModel
    extends BaseViewModel<SearchScreen, SearchScreenState>
    implements IntentHandler<SearchScreenIntent> {
  CatSearchViewModel(SearchScreenState state) : super(state);

  String get searchTerm;
}
