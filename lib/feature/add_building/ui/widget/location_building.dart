import 'package:flutter/material.dart';
import 'package:revo/feature/add_building/ui/widget/property_Type_Field.dart';
import 'package:revo/feature/add_building/ui/widget/property_selector.dart';

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
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("مكان العقار",
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          PropertySelector(
            title: "المحافظه",
            subtitle: 'اخترالمحافظه',
            options: ['شقة', 'فيلا', 'محل', 'مكتب', 'أرض'],
            onChanged: (v) => setState(() => selections['subType'] = v),
          ),
          PropertySelector(
            title: "المدينه",
            subtitle: 'اخترالمحافظه',
            options: ['شقة', 'فيلا', 'محل', 'مكتب', 'أرض'],
            onChanged: (v) => setState(() => selections['subType'] = v),
          ),
          PropertyTypeField(
            title: 'العنوان بالتفصيل',
            hintText: '   ادخل العنوان بالتفصيل مثال (شارع 123، حي 456...)',
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            height: 200,
            width: double.infinity,
            child: Image.asset(
              "assets/image/map.jpg",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
