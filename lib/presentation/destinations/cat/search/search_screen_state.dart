import 'package:flutter_template/presentation/entity/base/ui_toolbar.dart';
import 'package:flutter_template/presentation/entity/screen/cat/screen_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_screen_state.freezed.dart';

@freezed
class CatSearchScreenState
    with _$CatSearchScreenState
    implements CatScreenState {
  factory CatSearchScreenState({
    required UIToolbar toolbar,
    required bool showLoading,
    required List searchList,
  }) = _CatSearchScreenState;
}
