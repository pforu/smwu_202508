import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberRegisterScreen extends StatefulWidget {
  const MemberRegisterScreen({super.key});

  @override
  State<MemberRegisterScreen> createState() => _MemberRegisterScreenState();
}

class _MemberRegisterScreenState extends State<MemberRegisterScreen> {
  Dio dio = Dio(BaseOptions(baseUrl: "https://0f5d227aa566.ngrok-free.app"));
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  @override
  void dispose() { //사라지기 직전 한 번 호출 (init과 반대)
    // TODO: implement dispose
    emailController.dispose(); //메모리 아웃, 동적할당에서 free?
    passwordController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("멤버 등록"),),
      body: Column(
        children: [
          TextFormField(controller: emailController,),
          TextFormField(controller: passwordController,),
          ElevatedButton(onPressed: () async {
            await dio.post('/api/v1/member', data : {
              "email" : emailController.text,
              "password" : passwordController.text,
            });
            // await이 되어야 pop이 작동
            Navigator.pop(context, true);
          }, child: Text("등록"))
        ],
      ),
    );
  }
}
