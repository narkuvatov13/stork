// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      productId: json['productId'],
      productImage: json['productImage'],
      productPrice: json['productPrice'],
      productDescriptions: json['productDescriptions'],
      productPriceKg: json['productPriceKg'],
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productImage': instance.productImage,
      'productPrice': instance.productPrice,
      'productDescriptions': instance.productDescriptions,
      'productPriceKg': instance.productPriceKg,
    };
