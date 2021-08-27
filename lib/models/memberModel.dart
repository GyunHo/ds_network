class Member {
  String name = '';
  String team = '';
  String id = '';
  int level = 1;

  Member(
      {required String name,
      required String team,
      required String id,
      required int level})
      : this.name = name,
        this.team = team,
        this.id = id,
        this.level = level;
}
