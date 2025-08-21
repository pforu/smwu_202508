class Collections {
  void listAdd() {
    List<int> listInt = [];
    listInt.add(1);
    listInt.add(2);
    listInt.add(3);
    listInt.addAll([4, 5, 6, 7]);
    listInt.insert(0, 50);
    print(listInt);
  }

  void listRemove() {
    List<String> nameList = [];
    nameList.add("김진한");
    nameList.add("홍길동");
    nameList.add("이순신");
    nameList.add("오바마");
    nameList.add("기린");
    nameList.add("호랑이");
    nameList.add("사자");

    nameList.remove("기린");

    nameList.removeLast();

    nameList.removeAt(0);

    nameList.removeWhere((element) {
      return element == "호랑이";
    });

    print(nameList);
    nameList.clear();
    print(nameList);
  }

  void listController() {
    List<int> ageList = [4, 5, 6, 7, 8, 9, 0];
    int length = ageList.length;
    print('Collections.listController : $length');

    int two = ageList[2];
    print('Collections.listController two : $two');

    bool isEmpty = ageList.isEmpty;

    bool isNotEmpty = ageList.isNotEmpty;
  }

  //중괄호로 초기화
  void mapController() {
    Map m = {
      "a" : 10,
      "b" : 20,
      50 : 30,
    };

    var maValue = m["a"];
    print('Collections.mapController : $maValue');
    m["d"] = 40;
    m.remove("b");
    print('Collections.mapController : $m');

    Map<String, int> typeMap = {
      "a" : 10,
      "b" : 20,
      "c" : 30,
    };
    print('Collections.mapController typedMap : $typeMap');

  }

  void setController() {
    Set s = {"a", "b", "c"};
    s.add("a");
    s.add("b");
    print('Collections.setController : $s');
  }
}

