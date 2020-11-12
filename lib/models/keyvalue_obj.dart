class KeyValueObj {

  String key;
  String value;

  //local
  String pathImage;
  double height = 0.0;
  double width = 0.0;

  KeyValueObj({
    this.key,
    this.value,
    this.pathImage,
    this.height,
    this.width,
  });

  factory KeyValueObj.fromJson(Map<String, dynamic> json){
    return KeyValueObj(
      key: json['key'],
      value: json['value'],
    );
  }
}