import 'package:auto_route/auto_route.dart';
import 'package:bespoke/routing/route_config.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class BeSpokeHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BeSpokeHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF81C784),
      title: const Text(
        'Home',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          context.router.push(ProfileRoute());
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:  FirebaseAuth.instance.currentUser?.photoURL != null ? CircleAvatar(
            backgroundImage: NetworkImage(FirebaseAuth.instance.currentUser!.photoURL!),
          ):ProfilePicture(name: FirebaseAuth.instance.currentUser!.displayName!, radius: 28, fontsize: 18),
        ),
      ),
      actions: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/bespoke_logo.png',
            width: 50,
            height: 50,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(78);
}
