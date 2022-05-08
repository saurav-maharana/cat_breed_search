import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_view_model.dart';
import 'package:flutter_template/presentation/destinations/cat/search/widgets/search_page_results/search_page_results_content.dart';

class CatSearchPageResults extends ConsumerWidget {
  const CatSearchPageResults({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modelSearchTerm = ref.watch(catSearchViewModelProvider.notifier);

    return CatSearchPageResultsContent(
      searchTerm: modelSearchTerm.searchTerm,
      intentHandlerCallback: modelSearchTerm.onIntent,
    );
  }
}
