import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPropertyImages extends StatefulWidget {
  const AddPropertyImages({super.key});

  @override
  State<AddPropertyImages> createState() => _AddPropertyImagesState();
}

class _AddPropertyImagesState extends State<AddPropertyImages> {
  final List<XFile> _images = [];
  final ImagePicker _picker = ImagePicker();
  bool _isPicking = false; // Flag لمنع فتح متعدد

  Future<void> _pickImages() async {
    // منع فتح الـ picker لو هو شغال بالفعل
    if (_isPicking) {
      return;
    }

    setState(() {
      _isPicking = true;
    });

    try {
      final List<XFile>? selectedImages = await _picker.pickMultiImage();

      if (selectedImages != null && selectedImages.isNotEmpty) {
        if (_images.length + selectedImages.length > 10) {
          if (!mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('يمكنك رفع حتى 10 صور فقط'),
              backgroundColor: Colors.red,
            ),
          );
        } else {
          setState(() {
            _images.addAll(selectedImages);
          });
        }
      }
    } catch (e) {
      print('Error picking images: $e');
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('حدث خطأ في اختيار الصور'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isPicking = false;
        });
      }
    }
  }

  void _removeImage(int index) {
    setState(() {
      _images.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'أضف صور للعقار',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),

        // مؤشر التحميل
        if (_isPicking)
          const LinearProgressIndicator(
            backgroundColor: Colors.deepPurple,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),

        GestureDetector(
          onTap: _isPicking ? null : _pickImages, // تعطيل الزر أثناء التحميل
          child: AbsorbPointer(
            absorbing: _isPicking, // منع التفاعل أثناء التحميل
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color:
                    _isPicking ? Colors.grey.shade300 : const Color(0xFFF3EFFF),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: _isPicking ? Colors.grey : Colors.deepPurple.shade200,
                  style: BorderStyle.solid,
                  width: 1.5,
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
                          color: _isPicking ? Colors.grey : Colors.deepPurple,
                          size: 40,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _isPicking
                              ? 'جاري تحميل الصور...'
                              : 'اضغط لإضافة صورة',
                          style: TextStyle(
                            color: _isPicking ? Colors.grey : Colors.deepPurple,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'أضف حتى 10 صور',
                          style: TextStyle(
                            color: _isPicking ? Colors.grey : Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                        itemCount: _images.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            alignment: Alignment.topRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.file(
                                  File(_images[index].path),
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      color: Colors.grey.shade200,
                                      child: const Icon(Icons.error_outline),
                                    );
                                  },
                                ),
                              ),
                              Positioned(
                                top: 2,
                                right: 2,
                                child: GestureDetector(
                                  onTap: () => _removeImage(index),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.black54,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: const EdgeInsets.all(2),
                                    child: const Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                              // رقم الصورة
                              Positioned(
                                bottom: 2,
                                left: 2,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '${index + 1}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
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

        // عداد الصور
        if (_images.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(
            'عدد الصور: ${_images.length}/10',
            style: TextStyle(
              color: _images.length == 10 ? Colors.red : Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ],
    );
  }
}
