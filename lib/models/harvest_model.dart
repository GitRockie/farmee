class Harvest {
  int? totalSize;
  int? typeID;
  int? offest;
  //List<Products>? products;

  Harvest(
      {this.totalSize,
      this.offest,
      //this.products,
      this.typeID});

  Harvest.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    typeID = json['type_id'];
    offest = json['offset'];
    //if (json[products] != null) {
    //products = <Products>[];
  }
}
