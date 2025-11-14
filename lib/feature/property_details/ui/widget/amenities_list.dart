import 'package:flutter/material.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';

class Amenity {
  final String title;
  final IconData icon;
  final bool isAvailable;

  Amenity({
    required this.title,
    required this.icon,
    required this.isAvailable,
  });
}

class AmenitiesList extends StatefulWidget {
  const AmenitiesList({super.key});

  @override
  State<AmenitiesList> createState() => _AmenitiesListState();
}

class _AmenitiesListState extends State<AmenitiesList> {
  final List<Amenity> _amenities = [
    Amenity(
        title: 'غرفة خادمة',
        icon: Icons.cleaning_services_outlined,
        isAvailable: true),
    Amenity(title: 'مطبخ', icon: Icons.kitchen_outlined, isAvailable: true),
    Amenity(
        title: 'موقف سيارات',
        icon: Icons.local_parking_outlined,
        isAvailable: false),
    Amenity(title: 'مسبح', icon: Icons.pool_outlined, isAvailable: true),
    Amenity(title: 'حديقة', icon: Icons.park_outlined, isAvailable: false),
    Amenity(title: 'شرفة', icon: Icons.balcony_outlined, isAvailable: true),
    Amenity(title: 'تكييف', icon: Icons.ac_unit_outlined, isAvailable: true),
    Amenity(title: 'مصعد', icon: Icons.elevator_outlined, isAvailable: false),
    Amenity(
        title: 'غرفة غسيل',
        icon: Icons.local_laundry_service_outlined,
        isAvailable: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "المرافق",
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: TextStyles.font18BlackBoldCairo,
          ),
          const SizedBox(height: 8),
          ListView.builder(
            itemCount: _amenities.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = _amenities[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    Icon(item.icon, color: ColorsManager.mainColor),
                    const SizedBox(width: 12),
                    Text(
                      item.title,
                      style: const TextStyle(fontSize: 16, fontFamily: "Cairo"),
                    ),
                    const Spacer(),
                    Text(
                      item.isAvailable ? 'نعم' : 'لا',
                      style: TextStyle(
                        color: item.isAvailable
                            ? ColorsManager.secondaryColor
                            : Colors.red,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
