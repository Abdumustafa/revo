import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
    int selectedValue = _currentValue; // متغير لتخزين القيمة المختارة

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (BuildContext builder) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              height: 300,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Text(
                    "اختيار ${widget.item.title}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: CupertinoPicker(
                      magnification: 1.2,
                      squeeze: 1.1,
                      useMagnifier: true,
                      itemExtent: 40,
                      scrollController: FixedExtentScrollController(
                        initialItem: _currentValue - 1,
                      ),
                      onSelectedItemChanged: (int selectedItem) {
                        setModalState(() {
                          selectedValue =
                              selectedItem + 1; // تحديث القيمة المختارة
                        });
                      },
                      children: List<Widget>.generate(widget.item.maxValue,
                          (int index) {
                        return Center(
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(fontSize: 18),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // زر الإلغاء
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      // زر التأكيد
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentValue =
                                    selectedValue; // تحديث القيمة في الويدجت
                              });
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[600],
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
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.blue.shade100, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.shade50,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.item.icon, color: Colors.blue.shade700, size: 20),
            const SizedBox(height: 4),
            Text(
              widget.item.title,
              style: const TextStyle(fontSize: 12, color: Colors.black54),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              transitionBuilder: (child, animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: Text(
                '$_currentValue',
                key: ValueKey(_currentValue),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
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
        const SizedBox(height: 12),
        const Text(
          'تحديد مواصفات العقار',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.right,
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
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
