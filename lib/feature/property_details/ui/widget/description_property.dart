import 'package:flutter/material.dart';
import 'package:revo/core/theaming/styles.dart';

class DescriptionProperty extends StatefulWidget {
  final String text;
  final int maxLines;
  final TextStyle? style;
  final String mainTitle;

  const DescriptionProperty({
    super.key,
    required this.text,
    this.maxLines = 2,
    this.style,
    required this.mainTitle,
  });

  @override
  State<DescriptionProperty> createState() => _DescriptionPropertyState();
}

class _DescriptionPropertyState extends State<DescriptionProperty> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final textPainter = TextPainter(
          text: TextSpan(
            text: widget.text,
            style: TextStyles.font16GreymediumCairo,
          ),
          textDirection: TextDirection.ltr,
          maxLines: widget.maxLines,
        )..layout(maxWidth: constraints.maxWidth);

        final isOverflowing = textPainter.didExceedMaxLines;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.mainTitle,
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: TextStyles.font18BlackBoldCairo,
            ),
            SizedBox(height: 10),
            Text(
              widget.text,
              maxLines: _expanded ? null : widget.maxLines,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: TextStyles.font16GreymediumCairo,
            ),
            Text(
              widget.text,
              maxLines: _expanded ? null : widget.maxLines,
              overflow: TextOverflow.fade,
              style: TextStyles.font16GreymediumCairo,
              textAlign: TextAlign.right,
            ),
            if (isOverflowing)
              Align(
                alignment: Alignment.bottomLeft,
                child: GestureDetector(
                  onTap: () => setState(() => _expanded = !_expanded),
                  child: Text(
                    _expanded ? "قراءه أقل" : "قراءة المزيد",
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
