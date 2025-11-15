import 'package:flutter/material.dart';
import 'package:revo/core/theaming/colors.dart';

class NoProperty extends StatelessWidget {
  const NoProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (_, index) => Container(
                decoration: BoxDecoration(
                  color: ColorsManager.mainColor.withOpacity(0.07),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 160,
          width: double.infinity,
          margin: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.55),
                Colors.white.withOpacity(0.2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 14,
                offset: const Offset(0, 5),
              ),
            ],
            border: Border.all(
              color: Colors.white.withOpacity(0.6),
              width: 1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 30,
              // ),
              Icon(
                Icons.home_work_rounded,
                size: 45,
                color: ColorsManager.mainColor.withOpacity(0.85),
              ),
              const SizedBox(height: 12),
              Text(
                "لا توجد عقارات مضافة بعد",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey.shade800,
                  fontFamily: "Cairo",
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "ابدأ بإضافة أول عقار الآن",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.blueGrey.shade600,
                  fontFamily: "Cairo",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
