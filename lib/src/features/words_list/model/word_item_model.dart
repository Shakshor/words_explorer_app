class WordItemModel{
  final int levelNum;
  final int serialNum;
  final String arabic;
  final String english;

  WordItemModel({
    required this.levelNum,
    required this.serialNum,
    required this. arabic,
    required this.english,
  });

  // sqlite_table_json
  factory WordItemModel.fromTableJson(Map<dynamic, dynamic> json){
    return WordItemModel(
        levelNum: json['level_num'],
        serialNum: json['serial_num'],
        arabic: json['arabic'],
        english: json['english'],
    );
  }
}