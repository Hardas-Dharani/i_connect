import '../../domain/entities/paging.dart';

class PagingModel extends Paging {
  @override
  // ignore: overridden_fields
  final int totalResults;

  PagingModel({
    required this.totalResults,
  }) : super(totalResults: totalResults);
  @override
  factory PagingModel.fromJson(Map<String, dynamic> json) => PagingModel(
        totalResults: json["totalResults"],
      );
}
