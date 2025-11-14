import 'package:flutter/material.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/core/widget/primary_button.dart';
import 'package:revo/feature/add_property/ui/widget/amenities_selector.dart';
import 'package:revo/feature/add_property/ui/widget/location_building.dart';
import 'package:revo/feature/add_property/ui/widget/property_item_widget.dart';
import 'package:revo/feature/add_property/ui/widget/property_selector.dart';
import 'package:revo/feature/add_property/ui/widget/add_property_images.dart';
import 'package:revo/feature/add_property/ui/widget/property_type_field.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        title: Text(
          'اضافة عقار',
          style: TextStyles.font18whiteboldCairo,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
              SizedBox(height: 5),
              AddPropertyImages(),
              PropertyInfoGrid(),
              AmenitiesSelector(),
              LocationBuilding(),
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: PrimaryButton(
                  text: 'حفظ',
                  color: ColorsManager.mainColor,
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
