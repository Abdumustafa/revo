import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/models/compound_card_model.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/feature/compound/ui/widget/compound_card.dart';

class CompoundsScreen extends StatelessWidget {
  CompoundsScreen({super.key});

  final List<CompoundCardModel> compounds = [
    const CompoundCardModel(
      compoundName: "كومباوند ريفو",
      compoundLocation: "القاهرة الجديدة، مصر",
      pricesStart: 1500000,
      spaceStart: 120,
      rate: 4.8,
      compoundState: "مميز",
      compoundImage: 'assets/image/compounds.webp',
    ),
    const CompoundCardModel(
      compoundName: "كومباوند النخيل",
      compoundLocation: "القاهرة الجديدة، مصر",
      pricesStart: 2500000,
      spaceStart: 300,
      rate: 4.9,
      compoundState: "مميز",
      compoundImage: 'assets/image/compound.webp',
    ),
    const CompoundCardModel(
      compoundName: "كومباوند جاردينيا",
      compoundLocation: "القاهرة الجديدة، مصر",
      pricesStart: 2000000,
      spaceStart: 200,
      rate: 4.7,
      compoundState: "مميز",
      compoundImage: 'assets/image/compounds.webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: 330.h,
            width: double.infinity,
            child: Image.asset(
              "assets/image/city.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 330.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 95, 150, 170).withOpacity(0.7),
                  const Color(0xff036268).withOpacity(0.9),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(height: 16.h),
                  Text(
                    "الكومبوندات",
                    style: TextStyles.font22whiteboldCairo.copyWith(
                      fontSize: 22.sp,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.05),
                            blurRadius: 8.r,
                            offset: Offset(0, 3.h),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey, size: 24.sp),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "ابحث عن كومباوند...",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                          Icon(Icons.filter_list,
                              color: Colors.black87, size: 24.sp),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 180.h,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(26.r),
                  topRight: Radius.circular(26.r),
                ),
              ),
              child: ListView.builder(
                padding: EdgeInsets.only(top: 20.h),
                itemCount: compounds.length,
                itemBuilder: (context, index) {
                  return CompoundCard(compoundModel: compounds[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
