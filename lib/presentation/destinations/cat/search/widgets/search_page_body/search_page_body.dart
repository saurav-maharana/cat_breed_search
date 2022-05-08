import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_intent.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_view_model.dart';
import 'package:flutter_template/presentation/destinations/cat/search/widgets/search_page_body/search_page_body_content.dart';
import 'package:flutter_template/presentation/destinations/cat/search/widgets/search_page_results/search_page_results.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CatSearchBody extends HookConsumerWidget {
  const CatSearchBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController =
        useTextEditingController.fromValue(TextEditingValue.empty);

    textController.addListener(() {
      final searchModel = ref.read(catSearchViewModelProvider.notifier);

      searchModel.onIntent(
        SearchScreenIntent.search(searchTerm: textController.text),
      );
    });

    return CatSearchPageBodyContent(
      searchHint: 'searchHint',
      textController: textController,
      child: const CatSearchPageResults(),
    );
  }
}
