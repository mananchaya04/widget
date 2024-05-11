// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:flutter/material.dart';
import 'package:widget/widgets/compounds/navbar/bottom_bar.dart';

import 'package:widgets/widgets/compounds/navbar/AppBottomNavigationBar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Text('User'),
      ),
      bottomNavigationBar: BottomBar( 
        currentIndex: 1, 
      ),
    );
  }
}
