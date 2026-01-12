import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_chip_model.freezed.dart';
part 'product_chip_model.g.dart';

@freezed
abstract class ProductChipModel with _$ProductChipModel {
  const factory ProductChipModel(String title) = _ProductChipModel;

  // factory ProductChipModel.fromJson(Map<String, dynamic> json) => _$ProductChipModelFromJson(json);
}
