import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/core/widget/primary_button.dart';
import 'package:revo/feature/add_property/ui/widget/add_property_images.dart';
import 'package:revo/feature/add_property/ui/widget/amenities_selector.dart';
import 'package:revo/feature/add_property/ui/widget/location_building.dart';
import 'package:revo/feature/add_property/ui/widget/property_item_widget.dart';
import 'package:revo/feature/add_property/ui/widget/property_selector.dart';
import 'package:revo/feature/add_property/ui/widget/property_type_field.dart';

class AddProperty extends StatefulWidget {
  const AddProperty({super.key});

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  String? selectedPropertyType;
  final Map<String, String?> selections = {};
  final Map<String, List<String>> subTypes = {
    'سكني': ['شقة', 'فيلا', 'دوبلكس', 'بنتهاوس', 'رووف', 'شاليه'],
    'تجاري': ['محل', 'معرض', 'عيادة', 'مكتب', 'كشك', 'جراج'],
    'إداري': ['مكتب', 'كووركينج سبيس', 'وحدة إدارية'],
    'صناعي': ['مصنع', 'ورشة', 'هنجر', 'مخزن'],
    'أخرى': ['أخرى']
  };

  // final Map<String, int> selection = {
  //   'عدد الغرف': 0,
  //   'عدد الحمامات': 0,
  //   'عدد الطوابق': 0,
  //   'عدد المكيفات': 0,
  //   'عدد النوافذ': 0,
  //   'عدد الأبواب': 0,
  // };

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
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: 20.sp,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: [
              PropertySelector(
                title: 'نوع العقار',
                subtitle: 'اختر نوع العقار',
                options: ['سكني', 'تجاري', 'إداري', 'صناعي', 'أخرى'],
                value: selections['propertyType'],
                onChanged: (value) {
                  setState(() {
                    selectedPropertyType = value;
                    selections['propertyType'] = value;
                    selections['subType'] = null;
                  });
                },
              ),
              SizedBox(height: 10.h),
              if (selectedPropertyType != null)
                PropertySelector(
                  title: "النوع الفرعي",
                  subtitle: 'اختر النوع الفرعي',
                  options: subTypes[selectedPropertyType]!,
                  value: selections['subType'],
                  onChanged: (v) {
                    setState(() {
                      selections['subType'] = v;
                    });
                  },
                ),
              SizedBox(height: 10.h),
              PropertySelector(
                value: selections['contractType'],
                title: 'نوع العقد',
                subtitle: 'اختر نوع العقد',
                options: ['بيع', 'إيجار', 'تمليك', 'إيجار مفروش'],
                onChanged: (v) =>
                    setState(() => selections['contractType'] = v),
              ),
              SizedBox(height: 10.h),
              PropertyTypeField(
                keyboardType: TextInputType.number,
                title: 'المساحه',
                hintText: 'ادخل المساحه بالمتر المربع',
              ),
              SizedBox(height: 10.h),
              PropertyTypeField(
                keyboardType: TextInputType.number,
                title: 'السعر',
                hintText: 'السعر',
              ),
              SizedBox(height: 10.h),
              AddPropertyImages(),

              SizedBox(height: 10.h),
              PropertyTypeField(
                title: 'وصف العقار',
                hintText: 'مثال (عماره للبيع...)',
              ),
              SizedBox(height: 10.h),
              PropertyInfoGrid(),
              SizedBox(height: 10.h),
              AmenitiesSelector(),
              SizedBox(height: 10.h),
              LocationBuilding(),
              // VideoPickerWidget(
              //   onVideoPicked: (File videoFile) {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (_) => VideoPreviewScreen(videoFile: videoFile),
              //       ),
              //     );
              //   },
              // ),

              Padding(
                padding: EdgeInsets.only(top: 18.h),
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
