import 'package:flutter/material.dart';
import 'package:revo/core/theaming/styles.dart';

class LabelValueText extends StatelessWidget {
  const LabelValueText({super.key, required this.label, required this.text});
  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          style: TextStyles.font18BlackBoldCairo,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            text,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: TextStyles.font16GreymediumCairo,
          ),
        ),
      ],
    );
  }
}
