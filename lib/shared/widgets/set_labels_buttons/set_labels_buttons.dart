import 'dart:ffi';

import 'package:flutter/widgets.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final String secondLabel;

  final VoidCallback primaryOnPressed;
  final VoidCallback secondOnPressed;
  final bool enablePrimaryColor;
  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.secondLabel,
    required this.primaryOnPressed,
    required this.secondOnPressed,
    this.enablePrimaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color:AppColors.shape,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onTap: primaryOnPressed,
              style: enablePrimaryColor ? AppTextStyles.buttonPrimary : null,
            ),
          ),
          DividerVerticalWidget(),
          Expanded(
            child: LabelButton(
              label: secondLabel,
              onTap: secondOnPressed,
            ),
          ),
        ],
      ),
    );
  }
}
