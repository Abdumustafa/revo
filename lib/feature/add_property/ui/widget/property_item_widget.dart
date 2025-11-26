import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';

class PropertyInfoItem {
  final String title;
  final IconData icon;
  final int maxValue;

  PropertyInfoItem({
    required this.title,
    required this.icon,
    this.maxValue = 10,
  });
}

class PropertyItemWidget extends StatefulWidget {
  final PropertyInfoItem item;
  final int initialValue;

  const PropertyItemWidget({
    super.key,
    required this.item,
    required this.initialValue,
  });

  @override
  State<PropertyItemWidget> createState() => _PropertyItemWidgetState();
}

class _PropertyItemWidgetState extends State<PropertyItemWidget> {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
  }

  void _showNumberPicker(BuildContext context) {
    int selectedValue = _currentValue;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (BuildContext builder) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              height: 300.h,
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                children: [
                  Text(
                    "اختيار ${widget.item.title}",
                    style: TextStyles.font18blackmediumCairo,
                  ),
                  SizedBox(height: 20.h),
                  Expanded(
                    child: CupertinoPicker(
                      magnification: 1.2,
                      squeeze: 1.1,
                      useMagnifier: true,
                      itemExtent: 40.h,
                      scrollController: FixedExtentScrollController(
                        initialItem: _currentValue - 1,
                      ),
                      onSelectedItemChanged: (int selectedItem) {
                        setModalState(() {
                          selectedValue = selectedItem + 1;
                        });
                      },
                      children: List<Widget>.generate(widget.item.maxValue,
                          (int index) {
                        return Center(
                          child: Text(
                            '${index + 1}',
                            style: TextStyles.font18blackmediumCairo,
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[300],
                              foregroundColor: Colors.black,
                            ),
                            child: const Text('إلغاء'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentValue = selectedValue;
                              });
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorsManager.mainColor,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text('تأكيد'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showNumberPicker(context),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: ColorsManager.mainColor, width: 1.5.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.item.icon, color: ColorsManager.mainColor, size: 20.sp),
            SizedBox(height: 4.h),
            Text(
              widget.item.title,
              style: TextStyles.font12blackmediumCairo.copyWith(
                fontSize: 12.sp,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4.h),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              transitionBuilder: (child, animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: Text('$_currentValue',
                  key: ValueKey(_currentValue),
                  style: TextStyles.font22mainColorboldCairo.copyWith(
                    fontSize: 22.sp,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class PropertyInfoGrid extends StatefulWidget {
  const PropertyInfoGrid({super.key});

  @override
  State<PropertyInfoGrid> createState() => _PropertyInfoGridState();
}

class _PropertyInfoGridState extends State<PropertyInfoGrid> {
  final List<PropertyInfoItem> _items = [
    PropertyInfoItem(title: 'غرف النوم', icon: Icons.king_bed_outlined),
    PropertyInfoItem(title: 'الحمامات', icon: Icons.bathtub_outlined),
    PropertyInfoItem(title: 'غرف المعيشة', icon: Icons.chair_outlined),
    PropertyInfoItem(
        title: 'موقف سيارات', icon: Icons.directions_car_outlined, maxValue: 5),
    PropertyInfoItem(
        title: 'الطابق', icon: Icons.layers_outlined, maxValue: 20),
    PropertyInfoItem(title: 'المكيفات', icon: Icons.ac_unit_outlined),
  ];

  final Map<String, int> _values = {
    'غرف النوم': 0,
    'الحمامات': 0,
    'غرف المعيشة': 0,
    'موقف سيارات': 0,
    'الطابق': 0,
    'المكيفات': 0,
  };

  Map<String, int> getCurrentValues() {
    return _values;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12.h),
        Text(
          'تحديد مواصفات العقار',
          style: TextStyles.font18mainColorboldCairo.copyWith(fontSize: 18.sp),
          textAlign: TextAlign.right,
        ),
        Padding(
          padding: EdgeInsets.all(30.w),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context, index) {
                final item = _items[index];
                return PropertyItemWidget(
                  item: item,
                  initialValue: _values[item.title] ?? 0,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
