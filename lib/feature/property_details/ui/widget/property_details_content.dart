import 'package:flutter/material.dart';
import 'package:revo/core/theaming/font_weight_helper.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/feature/property_details/ui/widget/advertiser_details.dart';
import 'package:revo/feature/property_details/ui/widget/amenities_list.dart';
import 'package:revo/feature/property_details/ui/widget/description_property.dart';
import 'package:revo/feature/property_details/ui/widget/labeled_text.dart';

class PropertyDetailsContent extends StatelessWidget {
  const PropertyDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '29/1/2023 : تاريخ نشر العقار',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
              fontFamily: 'Cairo',
            ),
          ),
          SizedBox(height: 10),
          Text(
            'محلات تجاريه 22م للبيع  بالتقسيط بمدينه دمياط الجديده دمياط',
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: TextStyles.font18BlackBoldCairo,
          ),
          Text("100000000 ",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.blueAccent,
                  height: 1.6,
                  fontWeight: FontWeightHelper.extraBold,
                  fontFamily: 'Cairo')),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'دمياط الجديدة، دمياط، مصر',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                  fontFamily: 'Cairo',
                ),
              ),
              Icon(Icons.location_on, color: Colors.grey, size: 24),
              SizedBox(width: 8),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "موقع العقار",
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: TextStyles.font18BlackBoldCairo,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            height: 200,
            width: double.infinity,
            child: Image.asset(
              "assets/image/map.jpg",
              fit: BoxFit.cover,
            ),
          ),
          DescriptionProperty(
            text:
                "محلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياطمحلات تجارية 22م للبيع بالتقسيط بمدينة دمياط الجديدة - دمياط",
            mainTitle: 'الوصف',
          ),
          LabelValueText(
            label: "العنوان بالتفصيل",
            text: "دمياط الجديدة، دمياط، مصر",
          ),
          LabelValueText(
            label: "اكثر ما يميز العقار",
            text:
                " موقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنوات",
          ),
          AmenitiesList(),
          SizedBox(height: 10),
          Text(
            "ناشر الاعلان",
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: TextStyles.font18BlackBoldCairo,
          ),
          SizedBox(height: 20),
          AdvertiserDetails()
        ],
      ),
    );
  }
}
