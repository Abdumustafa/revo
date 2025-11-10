import 'package:flutter/material.dart';

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
      textDirection: TextDirection.rtl, // للغة العربية
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'المرافق',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ListView.builder(
            itemCount: _amenities.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = _amenities[index];
              return ListTile(
                leading: Icon(item.icon, color: Colors.blue.shade700),
                title: Text(item.title),
                trailing: Checkbox(
                  value: item.isSelected,
                  onChanged: (value) {
                    setState(() {
                      item.isSelected = value ?? false;
                    });
                  },
                  activeColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
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
