import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:productive/assets/constants/icons.dart';
import 'package:productive/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed('/login');
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Gap(40),
              Column(
                children: [
                  SvgPicture.asset(AppIcons.logo),
                  const Gap(12),
                  Text("Productive",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,letterSpacing: 0.4,color: Colors.white),)
                ],
              ),
              
              const CupertinoActivityIndicator(color: Color(0xFF8C97AB)),
            ],
          ),
        ),
      ),
    );
  }
}