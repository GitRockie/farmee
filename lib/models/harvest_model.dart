class Harvest {
  int? _totalSize;
  int? _typeId;
  int? _offest;
  late List<ProductModel> _products;
  List<ProductModel> get products => _products;

  Harvest(
      {required totalSize,
      required offest,
      required products,
      required typeId}) {
    this._totalSize = totalSize;
    this._typeId = typeId;
    this._offest = offest;
    this._products = products;
  }

  Harvest.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offest = json['offset'];
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products.add(ProductModel.fromJson(v));
      });
    }
  }
}

class ProductModel {
  int? id;
  int? price;
  int? stars;
  String? name;
  String? description;
  String? img;
  String? location;
  String? createdAt;
  String? updatedAt;
  int? typeId;
  ProductModel(
      {this.id,
      this.price,
      this.stars,
      this.name,
      this.description,
      this.img,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.typeId});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    stars = json['stars'];
    name = json['name'];
    description = json['description'];
    img = json['img'];
    location = json['location'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    typeId = json['typeId'];
  }
}
