// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    String description;
    String price;
    int rating;
    DateTime date;

    Fields({
        required this.user,
        required this.name,
        required this.description,
        required this.price,
        required this.rating,
        required this.date,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        rating: json["rating"],
        date: DateTime.parse(json["date"]),
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "description": description,
        "price": price,
        "rating": rating,
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    };
}
