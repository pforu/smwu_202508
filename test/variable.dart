class Variable {

  Variable() { //init같은 거, 인스턴스화 할 때 실행
    String name = "김진한";
    int age = 34;
    bool check = true;
    bool check2 = true;
    double weight = 75;


    //var, dynamic
    var animal = 'dog';
    animal = 'cat';
    //animal = 0; //오류, var은 코드레벨에서도 타입 추론

    dynamic home = false;
    home = true;
    home = 'my home'; //dynamic은 변수 타입 상관없음, 잘 안 씀
    //네트워크 통신에서 결과값이 뭐가 들어올지 모를 때 주로 사용


    //?:NULL
    String? smwu = 'yes';
    smwu = null;
    //Text(smwu); //오류, NULL일 수 있다

    int? age2 = 30;
    age2 = null;
    bool? h2 = false;
    h2 = null;

    //변수를 불변
    //final괴 const는 컴파일 시점의 차이
    //컴파일 = 사람이 작성한 코드를 컴퓨터가 인식할 수 있게 변환하는 작업
    //const : 컴파일 시점에 값이 정해짐
    //final : 런타임 시점에 값이 정해짐 -> 메모리에 올라옴
    final String name3 = 'jinhan38';
    //name3 = 'jinhan37';
    const String address = 'aaa';
    //address = "bbb"; //오류
  }

}