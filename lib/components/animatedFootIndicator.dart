import 'package:flutter/material.dart';
class AnimatedFootIndicator extends StatelessWidget {
  final double percentage; // النسبة المئوية

  const AnimatedFootIndicator({Key? key, required this.percentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: percentage / 100), // الأنيميشن يبدأ من 0 للنسبة
      duration: Duration(seconds: 2), // مدة الأنيميشن
      builder: (context, value, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            // الـ CircularProgressIndicator
            SizedBox(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(
                value: value, // القيمة المتحركة
                strokeWidth: 8,
                backgroundColor: Colors.white10,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            // الأيقونة والنص في المنتصف
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.directions_walk,
                  size: 30,
                  color: Colors.white,
                ),

              ],
            ),
          ],
        );
      },
    );
  }
}