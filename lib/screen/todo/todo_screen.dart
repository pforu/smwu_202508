import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/todo/todo_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TextEditingController controller = TextEditingController();
  List<TodoModel> todoList = [
    TodoModel("산책", true),
    TodoModel("저녁", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo"),),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: TextFormField(controller: controller,)),
              //expanded : 현재 주어진 영역의 빈 공간을 최대한 채움, 반응형 가능
              //textformfield : 문자열 입력받기
              TextButton(onPressed: () {
                /// 3. todolist에 새로운 todomodel 생성
                todoList.add(TodoModel(controller.text, false));
                //var todoModel = TodoModel(controller.text, false
                //todoList.add(todoModel)
                setState(() {});
                //print(controller.text);
              }, child: Text("등록"))
            ],
          ),
          //column 안에 스크롤을 가진 위젯이 있는 경우 높이 설정 필요
          Expanded(
            child: ListView.separated(itemBuilder: (context, index) {
              var model = todoList[index]; //차례대로 가져옴
              /// 1. checkbox 선택 시 checked 값 변경 후 화면 갱신
              /// 2. delete button 클릭해서 클릭한 todomodel 제거

              return Row(
                children: [
                  Checkbox(value: model.checked, onChanged: (value) {
                    model.checked = value!; //바뀐 값 던짐
                    //model.checked = !model.checked //T/F니까
                    setState(() {});
                  },),
                  Expanded(child: Text(model.name)),
                  IconButton(onPressed: () {
                    todoList.removeAt(index);
                    setState(() {});
                  }, icon: Icon(Icons.delete))
                ],
              );
            }, separatorBuilder: (context, index) {
              return Container(height: 2, color: Colors.grey,);
            }, itemCount: todoList.length),
          ),
        ],
      ),
    );
  }
}
