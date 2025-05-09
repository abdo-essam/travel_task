import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/tripslist_item_widget.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.black900,
      appBar: _buildHeader(context),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 16.h),
            _buildItemsRow(context),
            SizedBox(height: 18.h),
            _buildTripsList(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildHeader(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLinearInterface,
        margin: EdgeInsets.only(left: 16.h),
      ),
      title: SizedBox(
        width: double.maxFinite,
        child: AppbarTitleImage(
          imagePath: ImageConstant.imgLogoipsum3321,
          height: 40.h,
          width: 82.h,
          margin: EdgeInsets.only(left: 16.h),
        ),
      ),
      actions: [
        AppbarTrailingImage(imagePath: ImageConstant.imgSearch),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIcons,
          margin: EdgeInsets.only(left: 12.h),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: VerticalDivider(
            width: 1.h,
            thickness: 1.h,
            color: appTheme.gray800,
          ),
        ),
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgFrame77135,
          height: 32.h,
          width: 32.h,
          margin: EdgeInsets.only(left: 11.h, right: 15.h),
        ),
      ],
      styleType: Style.bgOutlineGray900,
    );
  }

  /// Section Widget
  Widget _buildItemsRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Items", style: theme.textTheme.headlineSmall),
          CustomIconButton(
            height: 40.h,
            width: 40.h,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.none,
            child: CustomImageView(
              imagePath: ImageConstant.imgLinearInterfaceWhiteA700,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTripsList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 16.h);
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return TripslistItemWidget();
          },
        ),
      ),
    );
  }
}
