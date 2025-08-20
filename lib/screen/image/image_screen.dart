import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image")),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [


              Container(
                color: Colors.grey,
                width: 150,
                height: 150,
                child: Image.network(
                  "https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png",
                ),
              ),

              SizedBox(height: 30),


              Container(
                color: Colors.grey,
                width: 150,
                height: 150,
                child: Image.network(
                  "https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png",
                  fit: BoxFit.fitHeight, //세로 기준으로 맞춰라
                ),
              ),

              SizedBox(height: 30),
              Container(
                color: Colors.grey,
                width: 150,
                height: 150,
                child: Image.network(
                  "https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png",
                  fit: BoxFit.cover, //세로 기준으로 맞춰라
                  alignment: Alignment.topRight,
                ),
              ),

              SizedBox(height: 30),
              Image.asset('assets/company_device.png'),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
