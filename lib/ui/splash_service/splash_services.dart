
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:super_foodoo/ui/onboarding_screen.dart';

class Splashservices{
  void LoginPage(BuildContext context){
  Timer(const Duration(seconds: 3), () {
  Navigator.push(context, MaterialPageRoute(builder: (_)=>const OnboardingScreen()));
  });

  }
}