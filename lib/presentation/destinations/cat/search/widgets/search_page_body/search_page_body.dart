import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/destinations/cat/search/widgets/search_page_body/search_page_body_content.dart';
import 'package:flutter_template/presentation/destinations/cat/search/widgets/search_page_results/search_page_results.dart';

class CatSearchBody extends StatelessWidget {
  const CatSearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CatSearchPageBodyContent(
      searchHint: 'searchHint',
      child: CatSearchPageResults(),
    );
  }
}
