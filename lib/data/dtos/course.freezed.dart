// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get startWeekMonthStamp => throw _privateConstructorUsedError;
  int get endWeekMonthStamp => throw _privateConstructorUsedError;
  int get academicWorkloadInHoursPerWeek => throw _privateConstructorUsedError;
  String get authorOrganizationFullname => throw _privateConstructorUsedError;
  String get authorOrganizationShortname => throw _privateConstructorUsedError;
  List<String> get relatedForEducationLevels =>
      throw _privateConstructorUsedError;
  int get createdDate => throw _privateConstructorUsedError;
  int get lastReviewedDate => throw _privateConstructorUsedError;
  Object? get lessons => throw _privateConstructorUsedError;
  Object? get additionalFiles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int startWeekMonthStamp,
      int endWeekMonthStamp,
      int academicWorkloadInHoursPerWeek,
      String authorOrganizationFullname,
      String authorOrganizationShortname,
      List<String> relatedForEducationLevels,
      int createdDate,
      int lastReviewedDate,
      Object? lessons,
      Object? additionalFiles});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? startWeekMonthStamp = null,
    Object? endWeekMonthStamp = null,
    Object? academicWorkloadInHoursPerWeek = null,
    Object? authorOrganizationFullname = null,
    Object? authorOrganizationShortname = null,
    Object? relatedForEducationLevels = null,
    Object? createdDate = null,
    Object? lastReviewedDate = null,
    Object? lessons = freezed,
    Object? additionalFiles = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startWeekMonthStamp: null == startWeekMonthStamp
          ? _value.startWeekMonthStamp
          : startWeekMonthStamp // ignore: cast_nullable_to_non_nullable
              as int,
      endWeekMonthStamp: null == endWeekMonthStamp
          ? _value.endWeekMonthStamp
          : endWeekMonthStamp // ignore: cast_nullable_to_non_nullable
              as int,
      academicWorkloadInHoursPerWeek: null == academicWorkloadInHoursPerWeek
          ? _value.academicWorkloadInHoursPerWeek
          : academicWorkloadInHoursPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      authorOrganizationFullname: null == authorOrganizationFullname
          ? _value.authorOrganizationFullname
          : authorOrganizationFullname // ignore: cast_nullable_to_non_nullable
              as String,
      authorOrganizationShortname: null == authorOrganizationShortname
          ? _value.authorOrganizationShortname
          : authorOrganizationShortname // ignore: cast_nullable_to_non_nullable
              as String,
      relatedForEducationLevels: null == relatedForEducationLevels
          ? _value.relatedForEducationLevels
          : relatedForEducationLevels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as int,
      lastReviewedDate: null == lastReviewedDate
          ? _value.lastReviewedDate
          : lastReviewedDate // ignore: cast_nullable_to_non_nullable
              as int,
      lessons: freezed == lessons ? _value.lessons : lessons,
      additionalFiles:
          freezed == additionalFiles ? _value.additionalFiles : additionalFiles,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int startWeekMonthStamp,
      int endWeekMonthStamp,
      int academicWorkloadInHoursPerWeek,
      String authorOrganizationFullname,
      String authorOrganizationShortname,
      List<String> relatedForEducationLevels,
      int createdDate,
      int lastReviewedDate,
      Object? lessons,
      Object? additionalFiles});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? startWeekMonthStamp = null,
    Object? endWeekMonthStamp = null,
    Object? academicWorkloadInHoursPerWeek = null,
    Object? authorOrganizationFullname = null,
    Object? authorOrganizationShortname = null,
    Object? relatedForEducationLevels = null,
    Object? createdDate = null,
    Object? lastReviewedDate = null,
    Object? lessons = freezed,
    Object? additionalFiles = freezed,
  }) {
    return _then(_$CourseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startWeekMonthStamp: null == startWeekMonthStamp
          ? _value.startWeekMonthStamp
          : startWeekMonthStamp // ignore: cast_nullable_to_non_nullable
              as int,
      endWeekMonthStamp: null == endWeekMonthStamp
          ? _value.endWeekMonthStamp
          : endWeekMonthStamp // ignore: cast_nullable_to_non_nullable
              as int,
      academicWorkloadInHoursPerWeek: null == academicWorkloadInHoursPerWeek
          ? _value.academicWorkloadInHoursPerWeek
          : academicWorkloadInHoursPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      authorOrganizationFullname: null == authorOrganizationFullname
          ? _value.authorOrganizationFullname
          : authorOrganizationFullname // ignore: cast_nullable_to_non_nullable
              as String,
      authorOrganizationShortname: null == authorOrganizationShortname
          ? _value.authorOrganizationShortname
          : authorOrganizationShortname // ignore: cast_nullable_to_non_nullable
              as String,
      relatedForEducationLevels: null == relatedForEducationLevels
          ? _value._relatedForEducationLevels
          : relatedForEducationLevels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as int,
      lastReviewedDate: null == lastReviewedDate
          ? _value.lastReviewedDate
          : lastReviewedDate // ignore: cast_nullable_to_non_nullable
              as int,
      lessons: freezed == lessons ? _value.lessons : lessons,
      additionalFiles:
          freezed == additionalFiles ? _value.additionalFiles : additionalFiles,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startWeekMonthStamp,
      required this.endWeekMonthStamp,
      required this.academicWorkloadInHoursPerWeek,
      required this.authorOrganizationFullname,
      required this.authorOrganizationShortname,
      required final List<String> relatedForEducationLevels,
      required this.createdDate,
      required this.lastReviewedDate,
      required this.lessons,
      required this.additionalFiles})
      : _relatedForEducationLevels = relatedForEducationLevels;

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int startWeekMonthStamp;
  @override
  final int endWeekMonthStamp;
  @override
  final int academicWorkloadInHoursPerWeek;
  @override
  final String authorOrganizationFullname;
  @override
  final String authorOrganizationShortname;
  final List<String> _relatedForEducationLevels;
  @override
  List<String> get relatedForEducationLevels {
    if (_relatedForEducationLevels is EqualUnmodifiableListView)
      return _relatedForEducationLevels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedForEducationLevels);
  }

  @override
  final int createdDate;
  @override
  final int lastReviewedDate;
  @override
  final Object? lessons;
  @override
  final Object? additionalFiles;

  @override
  String toString() {
    return 'Course(id: $id, title: $title, description: $description, startWeekMonthStamp: $startWeekMonthStamp, endWeekMonthStamp: $endWeekMonthStamp, academicWorkloadInHoursPerWeek: $academicWorkloadInHoursPerWeek, authorOrganizationFullname: $authorOrganizationFullname, authorOrganizationShortname: $authorOrganizationShortname, relatedForEducationLevels: $relatedForEducationLevels, createdDate: $createdDate, lastReviewedDate: $lastReviewedDate, lessons: $lessons, additionalFiles: $additionalFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startWeekMonthStamp, startWeekMonthStamp) ||
                other.startWeekMonthStamp == startWeekMonthStamp) &&
            (identical(other.endWeekMonthStamp, endWeekMonthStamp) ||
                other.endWeekMonthStamp == endWeekMonthStamp) &&
            (identical(other.academicWorkloadInHoursPerWeek,
                    academicWorkloadInHoursPerWeek) ||
                other.academicWorkloadInHoursPerWeek ==
                    academicWorkloadInHoursPerWeek) &&
            (identical(other.authorOrganizationFullname,
                    authorOrganizationFullname) ||
                other.authorOrganizationFullname ==
                    authorOrganizationFullname) &&
            (identical(other.authorOrganizationShortname,
                    authorOrganizationShortname) ||
                other.authorOrganizationShortname ==
                    authorOrganizationShortname) &&
            const DeepCollectionEquality().equals(
                other._relatedForEducationLevels, _relatedForEducationLevels) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastReviewedDate, lastReviewedDate) ||
                other.lastReviewedDate == lastReviewedDate) &&
            const DeepCollectionEquality().equals(other.lessons, lessons) &&
            const DeepCollectionEquality()
                .equals(other.additionalFiles, additionalFiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      startWeekMonthStamp,
      endWeekMonthStamp,
      academicWorkloadInHoursPerWeek,
      authorOrganizationFullname,
      authorOrganizationShortname,
      const DeepCollectionEquality().hash(_relatedForEducationLevels),
      createdDate,
      lastReviewedDate,
      const DeepCollectionEquality().hash(lessons),
      const DeepCollectionEquality().hash(additionalFiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {required final int id,
      required final String title,
      required final String description,
      required final int startWeekMonthStamp,
      required final int endWeekMonthStamp,
      required final int academicWorkloadInHoursPerWeek,
      required final String authorOrganizationFullname,
      required final String authorOrganizationShortname,
      required final List<String> relatedForEducationLevels,
      required final int createdDate,
      required final int lastReviewedDate,
      required final Object? lessons,
      required final Object? additionalFiles}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get startWeekMonthStamp;
  @override
  int get endWeekMonthStamp;
  @override
  int get academicWorkloadInHoursPerWeek;
  @override
  String get authorOrganizationFullname;
  @override
  String get authorOrganizationShortname;
  @override
  List<String> get relatedForEducationLevels;
  @override
  int get createdDate;
  @override
  int get lastReviewedDate;
  @override
  Object? get lessons;
  @override
  Object? get additionalFiles;
  @override
  @JsonKey(ignore: true)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
