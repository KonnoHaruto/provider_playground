import 'package:freezed_annotation/freezed_annotation.dart';
import 'text_list_model.dart';

part 'text_list.freezed.dart';

@freezed
class TextList with _$TextList {
  const factory TextList({
    @Default(<ListModel>[]) List<ListModel> textList, 
  }) = _TextList;
}
