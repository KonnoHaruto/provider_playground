// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListModelTearOff {
  const _$ListModelTearOff();

  _ListModel call({int id = 0, String content = ''}) {
    return _ListModel(
      id: id,
      content: content,
    );
  }
}

/// @nodoc
const $ListModel = _$ListModelTearOff();

/// @nodoc
mixin _$ListModel {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListModelCopyWith<ListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListModelCopyWith<$Res> {
  factory $ListModelCopyWith(ListModel value, $Res Function(ListModel) then) =
      _$ListModelCopyWithImpl<$Res>;
  $Res call({int id, String content});
}

/// @nodoc
class _$ListModelCopyWithImpl<$Res> implements $ListModelCopyWith<$Res> {
  _$ListModelCopyWithImpl(this._value, this._then);

  final ListModel _value;
  // ignore: unused_field
  final $Res Function(ListModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ListModelCopyWith<$Res> implements $ListModelCopyWith<$Res> {
  factory _$ListModelCopyWith(
          _ListModel value, $Res Function(_ListModel) then) =
      __$ListModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String content});
}

/// @nodoc
class __$ListModelCopyWithImpl<$Res> extends _$ListModelCopyWithImpl<$Res>
    implements _$ListModelCopyWith<$Res> {
  __$ListModelCopyWithImpl(_ListModel _value, $Res Function(_ListModel) _then)
      : super(_value, (v) => _then(v as _ListModel));

  @override
  _ListModel get _value => super._value as _ListModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
  }) {
    return _then(_ListModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ListModel implements _ListModel {
  const _$_ListModel({this.id = 0, this.content = ''});

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String content;

  @override
  String toString() {
    return 'ListModel(id: $id, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$ListModelCopyWith<_ListModel> get copyWith =>
      __$ListModelCopyWithImpl<_ListModel>(this, _$identity);
}

abstract class _ListModel implements ListModel {
  const factory _ListModel({int id, String content}) = _$_ListModel;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListModelCopyWith<_ListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
