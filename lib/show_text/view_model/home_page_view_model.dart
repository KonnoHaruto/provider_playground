import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_playground/show_text/model/text_list.dart';


final myProvider = StateNotifierProvider<TextListViewModel, TextList>(
    (ref) => TextListViewModel());

class TextListViewModel extends StateNotifier<TextList> {
  TextListViewModel() : super(const TextList());

  void add(String content, int id) {
    //TODO: かく
  }

  void delete(String content, int id) {
    //TODO: かく
  }

  void upDate() {
    //TODO: かく
  }

  void reset() {
    //TODO: かく
  }
}
