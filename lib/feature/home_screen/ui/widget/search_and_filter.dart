import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';

class SearchWithFilter extends StatelessWidget {
  SearchWithFilter({
    super.key,
    required this.selectedFilter,
    required this.isBuySelected,
    required this.onFilterChanged,
    required this.onToggleBuyRent,
  });

  final String selectedFilter;
  final bool isBuySelected;
  final ValueChanged<String> onFilterChanged;
  final ValueChanged<bool> onToggleBuyRent;

  final List<String> filters = [
    'الكل',
    'شقق',
    'فلل',
    'أراضي',
    'محلات',
    'مكاتب',
    "عمارات",
    "مصانع",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorsManager.mainColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'ابحث عن عقار',
                hintStyle: TextStyle(
                    color: Colors.grey[500],
                    fontFamily: "Cairo",
                    fontSize: 12.sp),
                prefixIcon:
                    Icon(Icons.search, color: Colors.grey[700], size: 20.sp),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide:
                      BorderSide(color: Colors.grey.shade300, width: 0.5.w),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(
                      color: ColorsManager.secondaryColor, width: 0.5.w),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildToggleButton(
                    title: 'شراء',
                    isSelected: isBuySelected,
                    onTap: () => onToggleBuyRent(true)),
                SizedBox(width: 10.w),
                _buildToggleButton(
                    title: 'إيجار',
                    isSelected: !isBuySelected,
                    onTap: () => onToggleBuyRent(false)),
              ],
            ),
            SizedBox(height: 5.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(filters.length, (index) {
                  bool isSelected = selectedFilter == filters[index];
                  return Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: ChoiceChip(
                      showCheckmark: false,
                      label: Text(
                        filters[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.grey[800],
                          fontFamily: "Cairo",
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal,
                          fontSize: 12.sp,
                        ),
                      ),
                      selected: isSelected,
                      selectedColor: ColorsManager.secondaryColor,
                      backgroundColor: Colors.grey[200],
                      onSelected: (_) => onFilterChanged(filters[index]),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildToggleButton({
  required String title,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 35.h,
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.secondaryColor : Colors.grey[200],
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: ColorsManager.secondaryColor.withOpacity(0.4),
                    blurRadius: 8.r,
                    offset: Offset(0, 3.h),
                  )
                ]
              : [],
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey[800],
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              fontSize: 14.sp,
              fontFamily: "Cairo",
            ),
          ),
        ),
      ),
    ),
  );
}
