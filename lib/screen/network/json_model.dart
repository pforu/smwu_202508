class JsonModel {
  String id;
  int number;
  Info? info;
  List<Framework> frameworks;

  JsonModel(this.id, this.number, this.info, this.frameworks);

  factory JsonModel.fromJson(Map<String, dynamic> json) {
    return JsonModel(
        json['id'] ?? '',
        json['number'] ?? 0,
        json['info'] == null ? null : Info.fromJson(json['info']),
        //json['framework'] == null ? [] : json['framework'].map((e) => Framework.fromJson(e)).toList()
        (json['framework'] as Iterable).map((e) => Framework.fromJson(e)).toList()
    );
  }

  @override
  String toString() {
    return 'JsonModel{id: $id, number: $number, info: $info, framework: $frameworks}';
  }
}

class Info {
  int age;
  double weight;
  String name;
  Description? description; //null을 허용하는 타입, 아니면 생성자를 따로 만들어서 처리

  Info(this.age, this.weight, this.name, this.description);

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
        json['age'] ?? 0,
        json['weight'] ?? 0.0,
        json['name'] ?? '',
        json['description'] == null ? null : Description.fromJson(json['description'])
    );
  }

  @override
  String toString() {
    return 'Info{age: $age, weight: $weight, name: $name, description: $description}';
  }
}

class Description {

  String career;
  String when;

  Description(this.career, this.when);

  //named constructor와 비슷, 계층처리중
  factory Description.fromJson(Map<String, dynamic> json) {
    return Description(
        json['career'] ?? '', //null이면 빈 값을 입력해줘
        json['when'] ?? ''
    );
  }

  @override
  String toString() {
    return 'Description{career: $career, when: $when}';
  }
}

class Framework {
  String email;
  String platform;

  Framework(this.email, this.platform);

  factory Framework.fromJson(Map <String, dynamic> json) {
    return Framework(
        json['email'] ?? '',
        json['platform'] ?? '');
  }

  @override
  String toString() {
    return 'Framework{email: $email, platform: $platform}';
  }
}