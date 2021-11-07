/*
 * satria
 * password_list_view.dart
 * Created by Cong Fandi on 6/11/2021
 * email 	: me@congfandi.com
 * website 	: https://www.thengoding.com
 * Copyright © 2021 Cong Fandi. All rights reserved.
 *
 */

import 'package:flutter/material.dart';

class PasswordListView extends StatefulWidget {
  const PasswordListView({Key? key}) : super(key: key);

  @override
  _PasswordListViewState createState() => _PasswordListViewState();
}

class _PasswordListViewState extends State<PasswordListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Password List"),
      ),
    );
  }
}
