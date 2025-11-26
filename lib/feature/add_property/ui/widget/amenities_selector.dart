import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';

class Amenity {
  final String title;
  final IconData icon;
  bool isSelected;

  Amenity({
    required this.title,
    required this.icon,
    this.isSelected = false,
  });
}

class AmenitiesSelector extends StatefulWidget {
  const AmenitiesSelector({super.key});

  @override
  State<AmenitiesSelector> createState() => _AmenitiesSelectorState();
}

class _AmenitiesSelectorState extends State<AmenitiesSelector> {
  final List<Amenity> _amenities = [
    Amenity(title: 'غرفة خادمة', icon: Icons.cleaning_services_outlined),
    Amenity(title: 'مطبخ', icon: Icons.kitchen_outlined),
    Amenity(title: 'موقف سيارات', icon: Icons.local_parking_outlined),
    Amenity(title: 'مسبح', icon: Icons.pool_outlined),
    Amenity(title: 'حديقة', icon: Icons.park_outlined),
    Amenity(title: 'شرفة', icon: Icons.balcony_outlined),
    Amenity(title: 'تكييف', icon: Icons.ac_unit_outlined),
    Amenity(title: 'مصعد', icon: Icons.elevator_outlined),
    Amenity(title: 'غرفة غسيل', icon: Icons.local_laundry_service_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('المرافق', style: TextStyles.font18mainColorboldCairo),
          SizedBox(height: 8.h),
          ListView.builder(
            itemCount: _amenities.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = _amenities[index];
              return ListTile(
                leading: Icon(
                  item.icon,
                  color: ColorsManager.mainColor,
                  size: 24.sp,
                ),
                title: Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Checkbox(
                  value: item.isSelected,
                  onChanged: (value) {
                    setState(() {
                      item.isSelected = value ?? false;
                    });
                  },
                  activeColor: ColorsManager.secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 2.h,
                ),
                onTap: () {
                  setState(() {
                    item.isSelected = !item.isSelected;
                  });
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
