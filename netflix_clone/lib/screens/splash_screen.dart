import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300, 
              height: 300, 
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo_comp.webp'),
                  fit: BoxFit.contain, 
                ),
              ),
            ),
            const SizedBox(height: 30),
            const SpinKitFadingCircle(
              color: Colors.red,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
