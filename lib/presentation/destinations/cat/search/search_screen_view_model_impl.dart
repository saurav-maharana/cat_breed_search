import 'package:flutter_template/interactor/cat/search/search_cat_interactor.dart';
import 'package:flutter_template/navigation/weather/search/search_navigator.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_intent.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_state.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_view_model.dart';
import '../../../entity/base/ui_toolbar.dart';

class CatSearchViewModelImpl extends CatSearchViewModel {
  final SearchCatInteractor searchCatInteractor;
  final SearchNavigator searchNavigator;
  final String _searchTerm = "";

  CatSearchViewModelImpl({
    required this.searchCatInteractor,
    required this.searchNavigator,
  }) : super(_initialState);

  static CatSearchScreenState get _initialState => CatSearchScreenState(
        toolbar: UIToolbar(
          title: "Search Page Title",
          hasBackButton: true,
        ),
        showLoading: false,
        searchList: List.empty(),
      );

  @override
  onInit() {
    setState((state) => state.copyWith(showLoading: true));
    searchCatInteractor.search('Sib').then((_) => {
          setState((state) {
            return state.copyWith(
              showLoading: false,
              searchList: searchCatInteractor.searchCatResults,
            );
          }),
        });
  }

  @override
  String get searchTerm => _searchTerm;

  @override
  void onIntent(SearchScreenIntent intent) {
    intent.when(
      search: (newSearchTerm) {
        if (newSearchTerm != searchTerm) {
          searchCatInteractor.search(_searchTerm);
        }
      },
    );
  }
}
