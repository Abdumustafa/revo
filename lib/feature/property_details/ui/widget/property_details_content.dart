import 'package:flutter/material.dart';
import 'package:revo/core/theaming/styles.dart';
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
          Text('29/1/2023 : تاريخ نشر العقار',
              style: TextStyles.font12greyboldCairo),
          SizedBox(height: 5),
          Text(
            'محلات تجاريه 22م للبيع  بالتقسيط بمدينه دمياط الجديده دمياط',
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: TextStyles.font18BlackBoldCairo,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_on, color: Colors.grey, size: 18),
              Text(
                'دمياط الجديدة، دمياط، مصر',
                style: TextStyles.font12greyboldCairo,
              ),
              SizedBox(width: 8),
            ],
          ),
          SizedBox(height: 5),
          Text("100000000 EGP", style: TextStyles.font22ColorboldCairo),
          SizedBox(height: 10),
          Text(
            "موقع العقار",
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: TextStyles.font18BlackBoldCairo,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
          SizedBox(height: 10),
          LabelValueText(
            label: "اكثر ما يميز العقار",
            text:
                " موقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنواموقع مميز، سعر مناسب، تقسيط على 5 سنوات",
          ),
          SizedBox(height: 10),
          AmenitiesList(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
