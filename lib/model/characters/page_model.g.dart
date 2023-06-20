// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageModel _$PageModelFromJson(Map<String, dynamic> json) => PageModel(
      current: json['current'] as int? ?? 1,
      pages: json['pages'] as int,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$PageModelToJson(PageModel instance) => <String, dynamic>{
      'current': instance.current,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };
