/*
 * satria
 * splash_screen_view.dart
 * Created by Cong Fandi on 6/11/2021
 * email 	: me@congfandi.com
 * website 	: https://www.thengoding.com
 * Copyright © 2021 Cong Fandi. All rights reserved.
 *
 */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satria/views/auth_view.dart';
import 'package:satria/views/home/home_view.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 3), ()async{
        if(FirebaseAuth.instance.currentUser != null){
          Get.offAll(const HomeView());
        }else{
          Get.offAll(const AuthView());
        }

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Satria"),
      ),
    );
  }
}
