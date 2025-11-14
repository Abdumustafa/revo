import 'package:flutter/material.dart';
import 'package:revo/core/theaming/colors.dart';

class SearchWithFilter extends StatefulWidget {
  const SearchWithFilter({super.key});

  @override
  State<SearchWithFilter> createState() => _SearchWithFilterState();
}

class _SearchWithFilterState extends State<SearchWithFilter> {
  int selectedFilter = 0;
  bool isBuySelected = true;

  final List<String> filters = [
    'الكل',
    'شقق',
    'فلل',
    'أراضي',
    'محلات',
    'مكاتب',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorsManager.mainColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'ابحث عن عقار',
                hintStyle: TextStyle(
                  color: Colors.grey[500],
                  fontFamily: "Cairo",
                  fontSize: 12,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[700],
                  size: 20,
                ),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                      BorderSide(color: Colors.grey.shade300, width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: ColorsManager.secondaryColor, width: 0.5),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildToggleButton(
                  title: 'شراء',
                  isSelected: isBuySelected,
                  onTap: () {
                    setState(() {
                      isBuySelected = true;
                    });
                  },
                ),
                const SizedBox(width: 10),
                _buildToggleButton(
                  title: 'إيجار',
                  isSelected: !isBuySelected,
                  onTap: () {
                    setState(() {
                      isBuySelected = false;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(filters.length, (index) {
                  bool isSelected = selectedFilter == index;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      showCheckmark: false,
                      label: Text(
                        filters[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.grey[800],
                          fontFamily: "Cairo",
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                      selected: isSelected,
                      selectedColor: ColorsManager.secondaryColor,
                      backgroundColor: Colors.grey[200],
                      onSelected: (_) {
                        setState(() {
                          selectedFilter = index;
                        });
                        // filterResults(filters[index]);
                      },
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
        height: 35,
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.secondaryColor : Colors.grey[200],
          borderRadius: BorderRadius.circular(25),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: ColorsManager.secondaryColor.withOpacity(0.4),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
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
              fontSize: 14,
              fontFamily: "Cairo",
            ),
          ),
        ),
      ),
    ),
  );
}
