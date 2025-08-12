

import 'package:json_annotation/json_annotation.dart';

part 'warehouse_product.g.dart';

/// Class mô tả sản phẩm trong kho
@JsonSerializable()
class WarehouseProduct {
  /// Product ID
  final int id;

  /// Product name
  final String name;

  /// Product status:
  /// - "created": product request created,
  /// - "active": product request approved,
  /// - "suspended": product suspended,
  /// - "declined": product request declined,
  /// - "draft": product created as a draft
  final String status;

  /// Currency
  final String currency;

  /// Image URL of product
  @JsonKey(name: 'image_url')
  final String imageUrl;

  /// Retail price of product
  @JsonKey(name: 'retail_price')
  final double retailPrice;

  /// Array of product variants
  final List<WarehouseProductVariant> variants;

  WarehouseProduct({
    required this.id,
    required this.name,
    required this.status,
    required this.currency,
    required this.imageUrl,
    required this.retailPrice,
    required this.variants,
  });

  factory WarehouseProduct.fromJson(Map<String, dynamic> json) =>
      _$WarehouseProductFromJson(json);

  Map<String, dynamic> toJson() => _$WarehouseProductToJson(this);
}


/// Class mô tả chi tiết một biến thể sản phẩm trong kho
@JsonSerializable()
class WarehouseProductVariant {
  /// ID biến thể sản phẩm
  final int id;

  /// Tên biến thể sản phẩm
  final String name;

  /// Mã SKU của biến thể sản phẩm
  final String sku;

  /// URL hình ảnh của biến thể sản phẩm
  @JsonKey(name: 'image_url')
  final String imageUrl;

  /// Giá bán lẻ của biến thể sản phẩm
  @JsonKey(name: 'retail_price')
  final double retailPrice;

  /// Tổng số lượng có sẵn của biến thể sản phẩm trong kho
  final int quantity;

  /// Chiều dài của biến thể sản phẩm
  final double length;

  /// Chiều rộng của biến thể sản phẩm
  final double width;

  /// Chiều cao của biến thể sản phẩm
  final double height;

  /// Trọng lượng của biến thể sản phẩm
  final double weight;

  /// Danh sách các vị trí kho chứa biến thể sản phẩm (WarehouseStockLocation)
  @JsonKey(name: 'stock_locations')
  final List<WarehouseStockLocation> stockLocations;

  WarehouseProductVariant({
    required this.id,
    required this.name,
    required this.sku,
    required this.imageUrl,
    required this.retailPrice,
    required this.quantity,
    required this.length,
    required this.width,
    required this.height,
    required this.weight,
    required this.stockLocations,
  });

  /// Tạo đối tượng từ JSON
  factory WarehouseProductVariant.fromJson(Map<String, dynamic> json) =>
      _$WarehouseProductVariantFromJson(json);

  /// Chuyển đối tượng thành JSON
  Map<String, dynamic> toJson() => _$WarehouseProductVariantToJson(this);
}

/// Represents the stock location information within a warehouse.
///
/// Contains details about the facility name, total quantity stocked,
/// and available quantity of a specific product variant.
@JsonSerializable()
class WarehouseStockLocation {
  /// Name of the warehouse facility
  final String facility;

  /// Total quantity of product variant in our stock
  final int stocked;

  /// Available quantity of product variant in our stock
  final int available;

  WarehouseStockLocation({
    required this.facility,
    required this.stocked,
    required this.available,
  });

  /// Creates a new instance from a JSON object.
  factory WarehouseStockLocation.fromJson(Map<String, dynamic> json) =>
      _$WarehouseStockLocationFromJson(json);

  /// Converts the current instance to JSON.
  Map<String, dynamic> toJson() => _$WarehouseStockLocationToJson(this);
}

