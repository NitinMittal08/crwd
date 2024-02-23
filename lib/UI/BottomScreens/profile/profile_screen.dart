
import 'package:crwd/UI/BottomScreens/profile/my_profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title:const Text('Profile'),),
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyProfile()));
        },
        child: Center(child: Text('Click meee')),
      ),
    ));
  }
}
