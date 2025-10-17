import 'package:flutter/material.dart';
import 'package:profile_card/profile_card.dart';


void main() {
  runApp(const MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:ProfileCardApp(),);
  }
}