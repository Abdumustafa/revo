import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBarButtons extends StatelessWidget {
  const BottomBarButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 12,
            offset: const Offset(0, -4),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 52,
              margin: const EdgeInsets.only(left: 8),
              child: ElevatedButton.icon(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 20,
                ),
                label: const Text(
                  "اتصال",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cairo",
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00A86B),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                  shadowColor: const Color(0xFF00A86B).withOpacity(0.3),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 6,
            child: Container(
              height: 52,
              margin: const EdgeInsets.only(right: 8),
              child: OutlinedButton.icon(
                onPressed: () {
                },
                icon: const Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Color(0xFF00A86B),
                  size: 20,
                ),
                label: const Text(
                  "تواصل عبر واتساب",
                  style: TextStyle(
                    color: Color(0xFF00A86B),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Cairo",
                    fontSize: 14,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xFFF0FDF4),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: const BorderSide(
                    color: Color(0xFF00A86B),
                    width: 1.5,
                  ),
                  elevation: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
