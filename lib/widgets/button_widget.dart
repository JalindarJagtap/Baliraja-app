import 'package:baapwallet/widgets/text_widget.dart';
import 'package:baliraja/widgets/circularprogress-indicator.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/app_sizes.dart';
import 'custom_circular_progress_indicator.dart';

class OutlineButtonWidget extends StatefulWidget {
  final String? text;
  final IconData? iconData;
  final MaterialStateProperty<Color?>? labelColor;
  final double? labelFontSize;
  final VoidCallback? onPressed;
  final double borderRadius;
  final bool? inProgress;
  final bool? isBackArrow;
  final FontWeight? fontWeight;
  final double? buttonWidth;
  final double? buttonHeight;

  const OutlineButtonWidget(
      {super.key,
      this.onPressed,
      this.borderRadius = 0.0,
      this.labelColor,
      this.inProgress,
      this.text,
      this.labelFontSize,
      this.iconData,
      this.fontWeight,
      this.buttonWidth,
      this.buttonHeight,
      this.isBackArrow});

  @override
  State<OutlineButtonWidget> createState() => _OutlineButtonWidgetState();
}

class _OutlineButtonWidgetState extends State<OutlineButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
        ),
        backgroundColor: widget.labelColor ??
            MaterialStatePropertyAll(Theme.of(context).scaffoldBackgroundColor),
        minimumSize: MaterialStatePropertyAll(
          Size(widget.buttonWidth ?? AppSizes.setWidth(100),
              widget.buttonHeight ?? AppSizes.setHeight(45)),
        ),
      ),
      child: (widget.inProgress ?? false)
          ? const CustomCircularProgressIndidator()
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  context: context,
                  data: widget.text,
                  fontSize: widget.labelFontSize,
                  color: Theme.of(context).primaryColor,
                  fontWeight: widget.fontWeight,
                ),
                widget.isBackArrow ?? false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5.sp,
                          ),
                          Icon(
                            widget.iconData,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      )
                    : const SizedBox()
              ],
            ),
    );
  }
}
