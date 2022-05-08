import 'package:flutter_template/presentation/entity/intent/intent.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_screen_intent.freezed.dart';

@freezed
class SearchScreenIntent with _$SearchScreenIntent implements BaseIntent {
  factory SearchScreenIntent.search({required String searchTerm}) =
      _SearchScreenIntent_Search;
}
