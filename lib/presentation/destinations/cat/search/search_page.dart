import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/base/page/base_page.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_state.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_view_model.dart';
import 'package:flutter_template/presentation/destinations/cat/search/widgets/search_page_body/search_page_body.dart';
import 'package:flutter_template/presentation/entity/screen/screen.dart';

class CatSearchPage extends StatelessWidget {
  const CatSearchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage<CatSearchScreen, CatSearchScreenState, CatSearchViewModel>(
      viewModelProvider: catSearchViewModelProvider,
      body: const CatSearchBody(),
    );
  }
}
