/*
 * satria
 * auth_view.dart
 * Created by Cong Fandi on 6/11/2021
 * email 	: me@congfandi.com
 * website 	: https://www.thengoding.com
 * Copyright © 2021 Cong Fandi. All rights reserved.
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:satria/controllers/auth_controller.dart';
import 'package:satria/views/widgets/auth_button.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  final AuthController _controller = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 48),
              child: SvgPicture.asset("assets/satria.svg"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  AuthButton(
                      iconImage: "assets/google.png",
                      onPress: () {},
                      label: "Sign In With Google"),
                  SizedBox(height: 8.0),
                  AuthButton(
                      iconImage: "assets/facebook.png",
                      onPress: () {},
                      label: "Sign In With Facebook"),
                  SizedBox(height: 8.0),
                  AuthButton(
                      iconImage: "assets/apple.png",
                      onPress: () {},
                      label: "Sign In With Apple"),
                  SizedBox(height: 16.0),
                  Column(
                    children: [
                      Text(
                        "Dengan sign in anda menyetujui",
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Syarat dan Ketentuan",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          Text(
                            " kami",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
