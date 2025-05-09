import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_drop_down.dart';
import '../../../widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class TripslistItemWidget extends StatelessWidget {
  TripslistItemWidget({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.zero,
      color: appTheme.gray90001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder16,
      ),
      child: Container(
        height: 314.h,
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder16,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 10.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDropDown(
                    width: 158.h,
                    icon: Container(
                      margin: EdgeInsets.only(left: 6.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLinearArrowChevrondown,
                        height: 16.h,
                        width: 16.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    iconSize: 16.h,
                    hintText: "Pending Approval",
                    items: dropdownItemList,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 4.h,
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    width: 72.h,
                    child: Text(
                      "Item title",
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCalendar,
                          height: 16.h,
                          width: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "5 Nights (Jan 16 - Jan 20, 2024) ",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(width: double.maxFinite, child: Divider()),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 24.h,
                          width: 62.h,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse1054,
                                height: 24.h,
                                width: 26.h,
                                radius: BorderRadius.circular(12.h),
                                alignment: Alignment.centerLeft,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse1055,
                                height: 24.h,
                                width: 26.h,
                                radius: BorderRadius.circular(12.h),
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 12.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse1056,
                                height: 24.h,
                                width: 26.h,
                                radius: BorderRadius.circular(12.h),
                                margin: EdgeInsets.only(right: 12.h),
                              ),
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.zero,
                                color: appTheme.gray900,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: appTheme.gray900,
                                    width: 0.6.h,
                                  ),
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder12,
                                ),
                                child: Container(
                                  height: 24.h,
                                  width: 26.h,
                                  decoration: AppDecoration.outlineGray
                                      .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder12,
                                      ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 10.h,
                                        width: 10.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.gray900,
                                          borderRadius: BorderRadius.circular(
                                            4.h,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "+6",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "4 unfinished tasks",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 188.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle1208,
                      height: 188.h,
                      width: double.maxFinite,
                      radius: BorderRadius.circular(8.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.h, right: 16.h),
                      child: CustomIconButton(
                        height: 32.h,
                        width: 32.h,
                        decoration: IconButtonStyleHelper.none,
                        alignment: Alignment.topRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUser,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
