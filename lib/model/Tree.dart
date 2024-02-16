import 'dart:convert';

List<Tree> treeFromJson(String str) =>
    List<Tree>.from(json.decode(str).map((x) => Tree.fromJson(x)));

String treeToJson(List<Tree> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Tree {
  String name;
  String imageLink;
  String price;
  String irrigation;
  Lighting lighting;
  String temperature;

  Tree({
    required this.name,
    required this.imageLink,
    required this.price,
    required this.irrigation,
    required this.lighting,
    required this.temperature,
  });

  factory Tree.fromJson(Map<String, dynamic> json) => Tree(
        name: json["Name"],
        imageLink: json["image_Link"],
        price: json["Price"],
        irrigation: json["Irrigation"],
        lighting: lightingValues.map[json["Lighting"]]!,
        temperature: json["TEMPERATURE"],
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "image_Link": imageLink,
        "Price": price,
        "Irrigation": irrigation,
        "Lighting": lightingValues.reverse[lighting],
        "TEMPERATURE": temperature,
      };
}

enum Lighting { BRIGHT_FILTERED_LIGHT_SUCH_AS_WINDOW, MEDIUM_TO_HIGH }

final lightingValues = EnumValues({
  "Bright filtered light such as window.":
      Lighting.BRIGHT_FILTERED_LIGHT_SUCH_AS_WINDOW,
  "Medium to High.": Lighting.MEDIUM_TO_HIGH
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
