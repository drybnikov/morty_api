import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'page_model.g.dart';

const int pageSize = 20;

@JsonSerializable()
class PageModel extends Equatable {
  final int current;
  final int pages;
  final int count;
  final String? next;
  final String? prev;

  bool get hasPrev => prev != null;

  bool get hasNext => next != null;

  const PageModel({
    this.current = 1,
    required this.pages,
    this.next,
    this.prev,
    this.count = 0,
  });

  const PageModel.firstPage({
    this.current = 1,
    this.pages = pageSize,
    this.count = pageSize,
    this.next = '2',
    this.prev,
  });

  PageModel copyWith(
          {int? current, int? pages, String? next, String? prev, int? count}) =>
      PageModel(
        current: current ?? this.current,
        pages: pages ?? this.pages,
        next: next ?? this.next,
        prev: prev ?? this.prev,
        count: count ?? this.count,
      );

  @override
  List<Object?> get props => [current, pages, next, prev, count];

  @override
  String toString() =>
      'PageModel(current:$current, pages:$pages, next:$next, prev:$prev, count:$count )';

  factory PageModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelFromJson(json);
}
