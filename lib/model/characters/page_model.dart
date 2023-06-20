import 'package:equatable/equatable.dart';
import 'package:fimber/fimber.dart';
import 'package:json_annotation/json_annotation.dart';

part 'page_model.g.dart';

@JsonSerializable()
class PageModel extends Equatable {
  final int current;
  final int pages;
  final String? next;
  final String? prev;

  bool get hasPrev => prev != null;

  bool get hasNext => next != null;

  const PageModel({
    this.current = 1,
    required this.pages,
    this.next,
    this.prev,
  });

  const PageModel.firstPage({
    this.current = 1,
    this.pages = 10,
    this.next = '2',
    this.prev,
  });

  PageModel copyWith({int? current, int? pages, String? next, String? prev}) =>
      PageModel(
        current: current ?? this.current,
        pages: pages ?? this.pages,
        next: next ?? this.next,
        prev: prev ?? this.prev,
      );

  factory PageModel.fromHeaderLink(
      {required int currentPage, required int pageLimit, String link = ''}) {
    ///Parse link string:  <https://picsum.photos/v2/list?page=2&limit=10>; rel="prev", <https://picsum.photos/v2/list?page=4&limit=10>; rel="next"
    final linkParts = link.split('?');

    final nextPageUri = linkParts
        .firstWhere((element) => element.contains('"next"'), orElse: () => '');
    final nextPageMap = Uri.splitQueryString(nextPageUri);

    final prevPageUri = linkParts
        .firstWhere((element) => element.contains('"prev"'), orElse: () => '');
    final prevPageMap = Uri.splitQueryString(prevPageUri);

    Fimber.d('linkParts:$linkParts');
    Fimber.d(
        'nextPageUri:$nextPageUri, map:$nextPageMap, page:${nextPageMap['page']}');
    Fimber.d(
        'prevPageUri:$prevPageUri, map:$prevPageMap, page:${prevPageMap['page']}');

    return PageModel(
      current: currentPage,
      pages: pageLimit,
      next: nextPageMap['page'] ?? '',
      prev: prevPageMap['page'] ?? '',
    );
  }

  @override
  List<Object?> get props => [current, pages, next, prev];

  @override
  String toString() =>
      'PageModel(current:$current, limit:$pages, next:$next, prev:$prev)';

  factory PageModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelFromJson(json);
}
