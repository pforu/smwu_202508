import 'package:flutter/material.dart';

class ImagePracticeScreen extends StatelessWidget {
  const ImagePracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image 실습")),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(

          child: Column(
            children: [
              
              Text("URL", style: TextStyle(color: Colors.black, fontSize: 20)),
              Container(
                color: Colors.grey,
                width: 200,
                height: 200,
                child: Image.network(
                  "https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_responsibility.png",
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 30),
              Text(
                "Asset",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Container(
                //color: Colors.grey,
                width: 200,
                height: 200,
                child: Image.asset('assets/company_sustainability.png', fit: BoxFit.fitWidth,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
