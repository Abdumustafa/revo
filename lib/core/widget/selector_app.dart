import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/feature/add_property/logic/property_selector_cubit.dart';

class SelectorApp  extends StatelessWidget {
  const SelectorApp ({
    super.key,
    required this.subtitle,
    required this.options,
    this.onChanged,
  });

  final String subtitle;
  final List<String> options;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FieldSelectorCubit>(
      create: (_) => FieldSelectorCubit(options: options),
      child: BlocConsumer<FieldSelectorCubit, FieldSelectorState>(
        listener: (context, state) {
          if (state is FieldSelectorChanged) {
            if (onChanged != null) onChanged!(state.selected);
          }
        },
        builder: (context, state) {
          final cubit = context.read<FieldSelectorCubit>();
          final display =
              state is FieldSelectorChanged ? state.selected : subtitle;
          final isSelected = state is FieldSelectorChanged;

          return Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                GestureDetector(
                  onTap: () => cubit.showSelectionSheet(context),
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
                            color: isSelected ? Colors.black : Colors.grey,
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
        },
      ),
    );
  }
}
