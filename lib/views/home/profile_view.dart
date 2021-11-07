/*
 * satria
 * profile_view.dart
 * Created by Cong Fandi on 6/11/2021
 * email 	: me@congfandi.com
 * website 	: https://www.thengoding.com
 * Copyright © 2021 Cong Fandi. All rights reserved.
 *
 */

import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
}
