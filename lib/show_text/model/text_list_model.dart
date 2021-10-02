import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_list_model.freezed.dart';

@freezed
class ListModel with _$ListModel {
  const factory ListModel({
    @Default(0) int id,
    @Default('') String content,
  }) = _ListModel;
}
