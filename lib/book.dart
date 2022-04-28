import 'dart:convert';

class Book {
  int? id;
  String? name;
  int? price;
  int? soldCount;
  String? imageUrl;
  Book({
    this.id,
    this.name,
    this.price,
    this.soldCount,
    this.imageUrl,
  });

  Book copyWith({
    int? id,
    String? name,
    int? price,
    int? soldCount,
    String? imageUrl,
  }) {
    return Book(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      soldCount: soldCount ?? this.soldCount,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(name != null){
      result.addAll({'name': name});
    }
    if(price != null){
      result.addAll({'price': price});
    }
    if(soldCount != null){
      result.addAll({'soldCount': soldCount});
    }
    if(imageUrl != null){
      result.addAll({'imageUrl': imageUrl});
    }
  
    return result;
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id']?.toInt(),
      name: map['name'],
      price: map['price']?.toInt(),
      soldCount: map['soldCount']?.toInt(),
      imageUrl: map['imageUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) => Book.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Book(id: $id, name: $name, price: $price, soldCount: $soldCount, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Book &&
      other.id == id &&
      other.name == name &&
      other.price == price &&
      other.soldCount == soldCount &&
      other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      price.hashCode ^
      soldCount.hashCode ^
      imageUrl.hashCode;
  }
}
