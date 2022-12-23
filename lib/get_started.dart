import 'package:flutter/material.dart';
import 'package:hy_finpay/home_page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF104E5B),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                bottom: -10,
                left: -60,
                child: Image.asset(
                  'assets/images/image5.png',
                  width: 250,
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 80),
                  Image.asset(
                    'assets/images/image3.png',
                    width: 355,
                  ),
                  SizedBox(height: 80),
                  Text(
                    'Better Way For You',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 84,
                    width: 269,
                    child: Text(
                      'What can we say if there is a app \nthat you can transfer money without getting any fee? Promisely',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 48,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFFDC27A),
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20),
                            ),
                          ),
                          child: Text(
                            'OK, BRING ME IN',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 77),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
