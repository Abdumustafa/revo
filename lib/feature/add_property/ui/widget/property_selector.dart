import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/styles.dart';

class PropertySelector extends StatelessWidget {
  const PropertySelector({
    super.key,
    required this.title,
    required this.subtitle,
    required this.options,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final String subtitle;
  final List<String> options;
  final String? value;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final display = value ?? subtitle;

    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.font18mainColorboldCairo.copyWith(
              fontSize: 18.sp,
            ),
          ),
          SizedBox(height: 6.h),
          GestureDetector(
            onTap: () => _showSelectionSheet(context),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.grey[200],
              ),
              height: 50.h,
              padding: EdgeInsets.all(8.w),
              margin: EdgeInsets.only(top: 8.h),
              child: Row(
                children: [
                  Text(
                    display,
                    style: TextStyle(
                      color: value == null ? Colors.grey : Colors.black,
                      fontFamily: "Cairo",
                      fontSize: 16.sp,
                    ),
                  ),
                  const Spacer(),
                  Icon(Icons.arrow_drop_down_sharp, size: 24.sp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showSelectionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      builder: (_) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // --- خط صغير من فوق للديزاين ---
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(height: 15),

            // --- العنوان ---
            Text(
              title,
              style: const TextStyle(
                fontFamily: "Cairo",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // --- القائمة ---
            Flexible(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: options.length,
                separatorBuilder: (context, index) => Divider(
                  height: 1,
                  color: Colors.grey.shade300,
                ),
                itemBuilder: (context, index) {
                  final item = options[index];

                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    title: Text(
                      item,
                      style: const TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 16,
                      ),
                    ),
                    trailing: value == item
                        ? const Icon(Icons.check, color: Colors.blue)
                        : null,
                    onTap: () {
                      onChanged(item);
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
