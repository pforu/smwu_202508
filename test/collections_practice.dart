class CollectionsPractice {

  void listmake() {
    List<String> listStr = [];
    listStr.addAll(["쥐", "뱀", "부엉이", "표범", "고양이"]);
    print("list : $listStr");

    listStr.removeAt(1);
    print("list : $listStr");
  }

  void mapmake() {
    Map<String, int> mapStr = {
      "눈송이" : 10,
      "눈덩이" : 20,
      "로로" : 30,
    };
    print("map : $mapStr");

    mapStr.removeWhere((key, value) {
      return key == "눈덩이";
    });
    print("map : $mapStr");
  }

  void setmake() {
    Set<String> setStr = {};
    setStr.add("한국");
    setStr.add("일본");
    setStr.add("호주");
    setStr.add("영국");
    setStr.add("스위스");
    print("set : $setStr");

    setStr.remove("한국");
    print("set : $setStr");
  }
}