import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import 'text_widget.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.title, this.titleColor, this.titleSize, this.titleFontWeight, this.onPressed, this.textDecoration});
 final String? title;
 final Color? titleColor;
 final TextDecoration?textDecoration;
 final double ?titleSize;
 final FontWeight ?titleFontWeight;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed ?? (){},
        child:TextWidget(
          title:title?? "Skip for now",
          textDecoration: textDecoration,
          titleColor:titleColor?? AppColors.mainColor,
          titleSize: titleSize ?? 19.sp,
          titleFontWeight:titleFontWeight?? FontWeight.bold,
        )
    );
  }
}
