// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TextListTearOff {
  const _$TextListTearOff();

  _TextList call({List<ListModel> textList = const <ListModel>[]}) {
    return _TextList(
      textList: textList,
    );
  }
}

/// @nodoc
const $TextList = _$TextListTearOff();

/// @nodoc
mixin _$TextList {
  List<ListModel> get textList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextListCopyWith<TextList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextListCopyWith<$Res> {
  factory $TextListCopyWith(TextList value, $Res Function(TextList) then) =
      _$TextListCopyWithImpl<$Res>;
  $Res call({List<ListModel> textList});
}

/// @nodoc
class _$TextListCopyWithImpl<$Res> implements $TextListCopyWith<$Res> {
  _$TextListCopyWithImpl(this._value, this._then);

  final TextList _value;
  // ignore: unused_field
  final $Res Function(TextList) _then;

  @override
  $Res call({
    Object? textList = freezed,
  }) {
    return _then(_value.copyWith(
      textList: textList == freezed
          ? _value.textList
          : textList // ignore: cast_nullable_to_non_nullable
              as List<ListModel>,
    ));
  }
}

/// @nodoc
abstract class _$TextListCopyWith<$Res> implements $TextListCopyWith<$Res> {
  factory _$TextListCopyWith(_TextList value, $Res Function(_TextList) then) =
      __$TextListCopyWithImpl<$Res>;
  @override
  $Res call({List<ListModel> textList});
}

/// @nodoc
class __$TextListCopyWithImpl<$Res> extends _$TextListCopyWithImpl<$Res>
    implements _$TextListCopyWith<$Res> {
  __$TextListCopyWithImpl(_TextList _value, $Res Function(_TextList) _then)
      : super(_value, (v) => _then(v as _TextList));

  @override
  _TextList get _value => super._value as _TextList;

  @override
  $Res call({
    Object? textList = freezed,
  }) {
    return _then(_TextList(
      textList: textList == freezed
          ? _value.textList
          : textList // ignore: cast_nullable_to_non_nullable
              as List<ListModel>,
    ));
  }
}

/// @nodoc

class _$_TextList implements _TextList {
  const _$_TextList({this.textList = const <ListModel>[]});

  @JsonKey(defaultValue: const <ListModel>[])
  @override
  final List<ListModel> textList;

  @override
  String toString() {
    return 'TextList(textList: $textList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextList &&
            (identical(other.textList, textList) ||
                const DeepCollectionEquality()
                    .equals(other.textList, textList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(textList);

  @JsonKey(ignore: true)
  @override
  _$TextListCopyWith<_TextList> get copyWith =>
      __$TextListCopyWithImpl<_TextList>(this, _$identity);
}

abstract class _TextList implements TextList {
  const factory _TextList({List<ListModel> textList}) = _$_TextList;

  @override
  List<ListModel> get textList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TextListCopyWith<_TextList> get copyWith =>
      throw _privateConstructorUsedError;
}
