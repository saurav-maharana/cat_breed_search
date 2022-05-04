import 'package:flutter_template/interactor/cat/search/search_cat_interactor.dart';
import 'package:flutter_template/interactor/cat/search/search_cat_interactor_impl.dart';
import 'package:flutter_template/navigation/weather/search/search_navigator.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_view_model.dart';
import 'package:flutter_template/presentation/destinations/weather/search/search_screen_state.dart';
import 'package:flutter_template/presentation/entity/base/ui_list_item.dart';
import '../../../entity/base/ui_toolbar.dart';

class CatSearchViewModelImpl extends CatSearchViewModel {
  final SearchCatInteractor searchCatInteractor;
  final SearchNavigator searchNavigator;
  final String _searchTerm = "";

  CatSearchViewModelImpl({
    required this.searchCatInteractor,
    required this.searchNavigator,
  }) : super(_initialState);

  static SearchScreenState get _initialState => SearchScreenState(
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
          state.copyWith(
            showLoading: false,
            searchList:
                SearchCatInteractorImpl().searchCatResult as List<UIListItem>,
          ),
        });
  }

  @override
  String get searchTerm => _searchTerm;
}
