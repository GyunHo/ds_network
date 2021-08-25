class Member {
  String? name;
  String? team;
  String? id;
  int? level = 1;

  Member(
      {required String? name,
      required String? team,
      required String? id,
      int? level = 1})
      : this.name = name,
        this.team = team,
        this.id = id,
        this.level = level;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      'name': this.name,
      'team': this.team,
      'id': this.id,
      'level': this.level
    };
    return json;
  }
}