import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(bottom: 50),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    child: Image.asset('assets/images/app_icon.png'),
                  ),
                  SizedBox(height: 30),
                  Text('Rooknews', style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text('FluSett', style: TextStyle(fontSize: 24),),
            ),
          ],
        ),
      ),
    );
  }
}
