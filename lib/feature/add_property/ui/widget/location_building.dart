import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/feature/add_property/ui/widget/property_type_field.dart';
import 'package:revo/feature/add_property/ui/widget/property_selector.dart';

class LocationBuilding extends StatefulWidget {
  const LocationBuilding({
    super.key,
  });

  @override
  State<LocationBuilding> createState() => _LocationBuildingState();
}

final Map<String, String> selections = {};

class _LocationBuildingState extends State<LocationBuilding> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PropertySelector(
            value: selections['propertyType'],
            title: "المحافظه",
            subtitle: 'اخترالمحافظه',
            options: ['شقة', 'فيلا', 'محل', 'مكتب', 'أرض'],
            onChanged: (v) => setState(() => selections['subType'] = v),
          ),
          SizedBox(height: 10.h),
          PropertySelector(
            value: selections['propertyType'],
            title: "المدينه",
            subtitle: 'اخترالمحافظه',
            options: ['شقة', 'فيلا', 'محل', 'مكتب', 'أرض'],
            onChanged: (v) => setState(() => selections['subType'] = v),
          ),
          SizedBox(height: 10.h),
          PropertyTypeField(
            title: 'العنوان بالتفصيل',
            hintText: 'ادخل العنوان بالتفصيل مثال (شارع 123، حي 456...)',
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
            height: 200.h,
            width: double.infinity,
            child: Image.asset(
              "assets/image/map.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
