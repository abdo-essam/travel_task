import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum Style { bgOutlineGray900 }

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.shape,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(key: key);

  final double? height;

  final ShapeBorder? shape;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shape: shape,
      toolbarHeight: height ?? 72.h,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(SizeUtils.width, height ?? 72.h);
  _getStyle() {
    switch (styleType) {
      case Style.bgOutlineGray900:
        return Container(
          height: 72.h,
          width: 374.h,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: appTheme.gray900, width: 1.h),
            ),
          ),
        );
      default:
        return null;
    }
  }
}
