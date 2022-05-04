import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/base/exceptions/unhandled_effect_exception.dart';
import 'package:flutter_template/presentation/base/page/base_page.dart';
import 'package:flutter_template/presentation/base/widgets/snackbar/snackbar.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_state.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_view_model.dart';
import 'package:flutter_template/presentation/destinations/weather/search/widgets/search_page_body/search_page_body.dart';
import 'package:flutter_template/presentation/entity/effect/effect.dart';
import 'package:flutter_template/presentation/entity/screen/screen.dart';

class CatSearchPage extends StatelessWidget {
  final CatSearchScreen searchScreen;

  const CatSearchPage({
    Key? key,
    required this.searchScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage<CatSearchScreen, CatSearchScreenState, CatSearchViewModel>(
      viewModelProvider: catSearchViewModelProvider,
      body: const SearchPageBody(),
      hideDefaultLoading: true,
      screen: searchScreen,
      onEffect: _handleEffect,
    );
  }

  _handleEffect(Effect effect) {
    effect.maybeMap(
      snackBar: (snackbarEffect) {
        showSnackbar(snackbarEffect);
      },
      orElse: () => throw UnhandledEffectException(effect),
    );
  }
}
