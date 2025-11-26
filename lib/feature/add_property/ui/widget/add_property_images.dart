import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';

class AddPropertyImages extends StatefulWidget {
  const AddPropertyImages({super.key});

  @override
  State<AddPropertyImages> createState() => _AddPropertyImagesState();
}

class _AddPropertyImagesState extends State<AddPropertyImages> {
  final List<XFile> _images = [];
  final ImagePicker _picker = ImagePicker();
  bool _isPicking = false;

  Future<void> _pickImages() async {
    if (_isPicking) return;

    setState(() => _isPicking = true);

    try {
      final List<XFile>? selectedImages = await _picker.pickMultiImage();

      if (selectedImages != null && selectedImages.isNotEmpty) {
        if (_images.length + selectedImages.length > 10) {
          if (!mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'يمكنك رفع حتى 10 صور فقط',
                style: TextStyle(fontFamily: "Cairo"),
              ),
              backgroundColor: Colors.red,
            ),
          );
        } else {
          setState(() => _images.addAll(selectedImages));
        }
      }
    } catch (e) {
      print('Error picking images: $e');
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'حدث خطأ في اختيار الصور',
            style: TextStyle(fontFamily: "Cairo"),
          ),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      if (mounted) setState(() => _isPicking = false);
    }
  }

  void _removeImage(int index) {
    setState(() => _images.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'أضف صور للعقار',
          style: TextStyles.font18mainColorboldCairo,
        ),
        SizedBox(height: 10.h),

        if (_isPicking)
          Container(
            child: LinearProgressIndicator(
              backgroundColor: ColorsManager.mainColor,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),

        GestureDetector(
          onTap: _isPicking ? null : _pickImages,
          child: AbsorbPointer(
            absorbing: _isPicking,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: double.infinity,
              height: 150.h,
              decoration: BoxDecoration(
                color: _isPicking
                    ? Colors.grey.shade300
                    : const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: _isPicking ? Colors.grey : ColorsManager.mainColor,
                  width: 1.5.w,
                ),
              ),
              child: _images.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _isPicking
                              ? Icons.hourglass_top
                              : Icons.add_a_photo_outlined,
                          color: _isPicking
                              ? Colors.grey
                              : ColorsManager.mainColor,
                          size: 40.sp,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          _isPicking
                              ? 'جاري تحميل الصور...'
                              : 'اضغط لإضافة صورة',
                          style: TextStyle(
                            fontFamily: "Cairo",
                            color: _isPicking
                                ? Colors.grey
                                : ColorsManager.mainColor,
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'أضف حتى 10 صور',
                          style: TextStyle(
                            fontFamily: "Cairo",
                            color: _isPicking ? Colors.grey : Colors.grey,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    )
                  : Padding(
                      padding: EdgeInsets.all(8.w),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8.w,
                          mainAxisSpacing: 8.h,
                        ),
                        itemCount: _images.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            alignment: Alignment.topRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.r),
                                child: Image.file(
                                  File(_images[index].path),
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      color: Colors.grey.shade200,
                                      child: Icon(Icons.error_outline,
                                          size: 24.sp),
                                    );
                                  },
                                ),
                              ),
                              Positioned(
                                top: 2.h,
                                right: 2.w,
                                child: GestureDetector(
                                  onTap: () => _removeImage(index),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: EdgeInsets.all(2.r),
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 2.h,
                                left: 2.w,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.w,
                                    vertical: 2.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Text(
                                    '${index + 1}',
                                    style: TextStyles.font10whiteboldCairo,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
            ),
          ),
        ),

        if (_images.isNotEmpty) ...[
          SizedBox(height: 8.h),
          Text(
            'عدد الصور: ${_images.length}/10',
            style: TextStyle(
              fontFamily: "Cairo",
              color: _images.length == 10 ? Colors.red : Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
          ),
        ],
      ],
    );
  }
}
