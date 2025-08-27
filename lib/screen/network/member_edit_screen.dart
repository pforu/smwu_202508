import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberEditScreen extends StatefulWidget {
  const MemberEditScreen({required this.email, super.key});

  final String email; //list screen에서 받은 거

  @override
  State<MemberEditScreen> createState() => _MemberEditScreenState();
}

class _MemberEditScreenState extends State<MemberEditScreen> {
  Dio dio = Dio(BaseOptions(baseUrl: "https://0f5d227aa566.ngrok-free.app"));
  TextEditingController emailController = TextEditingController(); //보라색 변수이름인 거 확인하기
  TextEditingController passwordController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    emailController.text = widget.email; //받은 걸로 초기화
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("회원 정보 수정"),),
      body: Column(
        children: [
          TextFormField(controller: emailController,),
          TextFormField(controller: passwordController,),
          TextFormField(controller: descriptionController,),
          ElevatedButton(onPressed: () async {
            await dio.patch('/api/v1/member/update', data: { //patch로 넘기는 중에 기다림
              "email" : emailController.text,
              "password" : passwordController.text,
              "description" : descriptionController.text,
            });
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("수정 성공"),));
            //넘기는 게 끝나면(=호출 종료) 팝업 띄움
            await Future.delayed(Duration(milliseconds: 800)); //기다렸다가
            Navigator.pop(context); //전 화면으로 돌아감
          }, child: Text("업데이트")),
          ElevatedButton(onPressed: () async {
            // await dio.delete('/api/v1/member/delete');
            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("삭제 성공"),));
          }, child: Text("삭제")),
        ],
      ),
    );
  }
}
