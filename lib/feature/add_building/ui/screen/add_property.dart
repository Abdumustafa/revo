import 'package:flutter/material.dart';
import 'package:revo/core/widget/primary_button.dart';
import 'package:revo/feature/add_building/ui/widget/amenities_selector.dart';
import 'package:revo/feature/add_building/ui/widget/location_building.dart';
import 'package:revo/feature/add_building/ui/widget/property_item_widget.dart';
import 'package:revo/feature/add_building/ui/widget/property_selector.dart';
import 'package:revo/feature/add_building/ui/widget/property_type_field.dart';
import 'package:revo/feature/add_building/ui/widget/add_property_images.dart';

class AddProperty extends StatefulWidget {
  const AddProperty({super.key});

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  final Map<String, String> selections = {};
  final Map<String, int> selection = {
    'عدد الغرف': 0,
    'عدد الحمامات': 0,
    'عدد الطوابق': 0,
    'عدد المكيفات': 0,
    'عدد النوافذ': 0,
    'عدد الأبواب': 0,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Building'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              PropertySelector(
                title: 'نوع العقار',
                subtitle: 'اختر نوع العقار',
                options: ['سكني', 'تجاري', 'إداري', 'صناعي', 'أخرى'],
                onChanged: (v) =>
                    setState(() => selections['propertyType'] = v),
              ),
              PropertySelector(
                title: "النوع الفرعي",
                subtitle: 'اختر النوع الفرعي',
                options: ['شقة', 'فيلا', 'محل', 'مكتب', 'أرض'],
                onChanged: (v) => setState(() => selections['subType'] = v),
              ),
              PropertySelector(
                title: 'نوع العقد',
                subtitle: 'اختر نوع العقد',
                options: ['بيع', 'إيجار', 'تمليك', 'إيجار مفروش'],
                onChanged: (v) =>
                    setState(() => selections['contractType'] = v),
              ),
              PropertyTypeField(
                title: 'المساحه',
                hintText: 'ادخل المساحه بالمتر المربع',
              ),
              PropertyTypeField(
                title: 'السعر',
                hintText: 'السعر',
              ),
              PropertyTypeField(
                title: 'وصف العقار',
                hintText: 'مثال (عماره للبيع...)',
              ),
              AddPropertyImages(),
              PropertyInfoGrid(),
              AmenitiesSelector(),
              LocationBuilding(),
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: PrimaryButton(
                  text: 'حفظ',
                  onPressed: () {
                    debugPrint('تم الحفظ');
                  },
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
