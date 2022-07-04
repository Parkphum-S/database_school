import 'package:database_school/screen_ui/login_ui.dart';
import 'package:flutter/material.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({Key? key}) : super(key: key);

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 5,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginUI(),
        ),
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 33, 112, 249),
              Color.fromARGB(255, 90, 177, 248),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage(
                  'assets/images/ideaspai.jpeg',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                ' ยินดีต้อนรับ',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
