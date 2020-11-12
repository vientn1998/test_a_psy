class KeyValueObj {

  String key;
  String value;

  //local
  String pathImage;

  KeyValueObj({
    this.key,
    this.value,
    this.pathImage,
  });

  factory KeyValueObj.fromJson(Map<String, dynamic> json){
    return KeyValueObj(
      key: json['key'],
      value: json['value'],
    );
  }
}