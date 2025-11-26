import 'package:flutter/material.dart';
import 'package:revo/core/theaming/styles.dart';

class LabelValueText extends StatelessWidget {
  const LabelValueText({
    super.key,
    required this.label,
    this.text,
  });

  final String label;
  final String? text;

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
        if (text != null && text!.isNotEmpty) ...[
          const SizedBox(height: 4),
          Text(
            text!,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: TextStyles.font16GreymediumCairo,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ],
    );
  }
}
