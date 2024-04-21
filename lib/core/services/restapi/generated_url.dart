import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated_url.freezed.dart';

part 'generated_url.g.dart';


@freezed
class GeneratorDetailEntity with _$GeneratorDetailEntity {
  const factory GeneratorDetailEntity({
     @Default('') String shortUrl,
     @Default('') String domainId,
     @Default('') String domainName,

  }) = _GeneratorDetailEntity;

  factory GeneratorDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$GeneratorDetailEntityFromJson(json);

}
