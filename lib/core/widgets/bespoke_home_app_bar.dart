import 'package:flutter/material.dart';



class BeSpokeHomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const BeSpokeHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQueryData().size.width,
      height: 78,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 412,
              height: 78,
              decoration: BoxDecoration(color: Color(0xFF81C784)),
            ),
          ),
          Positioned(
            left: 144,
            top: 29,
            child: SizedBox(
              width: 63,
              height: 23,
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            left: 351,
            top: 11,
            child: Container(
              width: 50,
              height: 50,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bespoke_logo.png'),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 305,
            top: 28,
            child: Container(
              width: 24,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/24x25"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 19,
            child: Container(
              width: 41.80,
              height: 41.80,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/42x42"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(64),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(78);
}
