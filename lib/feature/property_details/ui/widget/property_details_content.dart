import 'package:flutter/material.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/feature/home_screen/ui/widget/body_map_conntent/product_list_horizontal.dart';
import 'package:revo/feature/property_details/ui/widget/amenities_list.dart';
import 'package:revo/feature/property_details/ui/widget/description_property.dart';
import 'package:revo/feature/property_details/ui/widget/labeled_text.dart';

class PropertyDetailsContent extends StatelessWidget {
  const PropertyDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      padding: EdgeInsets.all(size.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '29/1/2023 : تاريخ نشر العقار',
            style: TextStyles.font12greyboldCairo,
          ),
          SizedBox(height: size.height * 0.005),
          Text(
            'محلات تجاريه 22م للبيع  بالتقسيط بمدينه دمياط الجديده دمياط',
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: TextStyles.font18BlackBoldCairo,
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_on,
                  color: Colors.grey, size: size.width * 0.045),
              SizedBox(width: 5),
              Expanded(
                child: Text(
                  'دمياط الجديدة، دمياط، مصر',
                  style: TextStyles.font12greyboldCairo,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.01),
          Text(
            "100000000 EGP",
            style: TextStyles.font22ColorboldCairo,
          ),
          SizedBox(height: size.height * 0.015),
          Text(
            "موقع العقار",
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: TextStyles.font18BlackBoldCairo,
          ),
          SizedBox(height: size.height * 0.008),
          Container(
            padding: EdgeInsets.all(size.width * 0.02),
            height: size.height * 0.25,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/image/map.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.015),
          DescriptionProperty(
            text:
                "محلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياط...",
            mainTitle: 'الوصف',
          ),
          SizedBox(height: size.height * 0.015),
          LabelValueText(
            label: "العنوان بالتفصيل",
            text: "دمياط الجديدة، دمياط، مصر",
          ),
          SizedBox(height: size.height * 0.015),
          LabelValueText(
            label: "اكثر ما يميز العقار",
            text: " موقع مميز، سعر مناسب، تقسيط على 5 سنوات...",
          ),
          SizedBox(height: size.height * 0.015),
          AmenitiesList(),
          SizedBox(height: size.height * 0.02),
          LabelValueText(
            label: "اعلانات مشابهة",
          ),
          ProductListHorizontal(),
        ],
      ),
    );
  }
}
