import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/base/intent/intent_handler_callback.dart';
import 'package:flutter_template/presentation/base/widgets/list/ui_list.dart';
import 'package:flutter_template/presentation/base/widgets/responsive/responsive_builder.dart';
import 'package:flutter_template/presentation/destinations/cat/search/search_screen_intent.dart';

class CatSearchPageResultsContent extends StatelessWidget {
  final String searchTerm;
  final IntentHandlerCallback<SearchScreenIntent> intentHandlerCallback;

  const CatSearchPageResultsContent(
      {Key? key, required this.searchTerm, required this.intentHandlerCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ResponsiveBuilder(
          builder: ((context, mediaQueryData, boxConstraints) {
        return UIList<SearchScreenIntent>(
          renderers: const {},
          intentHandler: intentHandlerCallback,
          items: const [],
        );
      })),
    );
  }
}
