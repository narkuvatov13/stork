import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stork/routes/app_router.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';
import 'package:stork/utils/constants/app_textstyles.dart';

class Apps extends StatefulWidget {
  const Apps({super.key});
  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  // final bool _pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stork')),

      // bottomSheet: BottomSheet(
      //   onClosing: () {},
      //   builder: (BuildContext context) {
      //     return SizedBox(height: 400, width: 200);
      //   },
      // ),
      body: Column(
        children: [
          // Section Address
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: AppSizes.md),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                //left section
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Address Modal Bottom
                      showModalBottomSheet(
                        useRootNavigator: true,
                        context: context,
                        useSafeArea: true,
                        isScrollControlled: true,
                        builder: (context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.75,
                            child: Stack(
                              children: [
                                // Modal body
                                SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SingleChildScrollView(
                                        child: Column(
                                          children: List.generate(
                                            10,
                                            (i) => Container(
                                              height: 200,
                                              margin: const EdgeInsets.all(8),
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Modal Top Section
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    color: AppColors.surface,
                                    padding: const EdgeInsets.all(AppSizes.md),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Select delivery address',
                                          style: AppTextStyles.withColor(
                                            AppTextStyles.bodySmall,
                                            AppColors.textSecondary,
                                          ),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {},
                                          label: Text(
                                            'My addresses',
                                            style: AppTextStyles.withColor(
                                              AppTextStyles.bodySmall,
                                              AppColors.primary,
                                            ),
                                          ),
                                          icon: Icon(Icons.location_pin, color: AppColors.primary),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // appDivider(),

                                // Modal Bottom Section
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(AppSizes.md),
                                      color: AppColors.surface,
                                      child: Row(
                                        spacing: AppSizes.spaceBtwItems,
                                        children: [
                                          Icon(
                                            Icons.add,
                                            color: AppColors.primary,
                                            size: AppSizes.iconMd,
                                          ),
                                          Text(
                                            'Add New Address',
                                            style: AppTextStyles.withColor(
                                              AppTextStyles.bodyXsSmall,
                                              AppColors.primary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Icon(
                              Icons.location_pin,
                              color: AppColors.primary,
                              size: AppSizes.iconMd,
                            ),
                          ),
                          TextSpan(
                            text: 'No Address Information Available',
                            style: AppTextStyles.withColor(
                              AppTextStyles.bodyXsSmall,
                              AppColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Right Section
                GestureDetector(
                  onTap: () {},
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Add Address",
                          style: AppTextStyles.withColor(
                            AppTextStyles.bodyXsSmall,
                            AppColors.primary,
                          ),
                        ),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Icon(Icons.add, color: AppColors.primary, size: AppSizes.iconMd),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Section PageView
          Expanded(
            flex: AppSizes.flex3,
            child: PageView(
              children: [
                Container(height: 200, width: 200, color: Colors.pink),
                Container(height: 200, width: 200, color: Colors.red),
                Container(height: 200, width: 200, color: Colors.green),
              ],
            ),
          ),
          // Section Body Item Cards
          Expanded(flex: AppSizes.flex6, child: appBody()),
        ],
      ),
    );
  }
}

// Apps Page Body
Widget appBody() {
  return Padding(
    padding: const EdgeInsets.all(AppSizes.md),
    child: Wrap(
      spacing: AppSizes.spaceBtwItems,
      runSpacing: AppSizes.spaceBtwItems,
      children: [
        _AppsCard(
          cardRoute: AppRoutes.storkShopHomePage,
          cardImage: 'assets/images/stork_images/apps_images/sepet1.webp',
          cardName: 'Stork Market',
          cardTitle: '5000+ products at affordable prices.',
          cardHeight: 120,
          cardWidth: 100,
        ),
        _AppsCard(
          cardRoute: '',
          cardImage: 'assets/images/stork_images/apps_images/burger.png',
          cardName: 'Stork Foods',
          cardTitle: 'Over 100 restaurants',
          cardHeight: 120,
          cardWidth: 100,
        ),
        _AppsCard(
          cardRoute: '',
          cardImage: 'assets/images/stork_images/apps_images/damacana.png',
          cardName: 'Stork Water',
          cardHeight: 100,
          cardWidth: 100,
        ),
        _AppsCard(
          cardRoute: '',
          cardImage: 'assets/images/stork_images/apps_images/taxi.png',
          cardName: 'Stork Taxi',
          cardHeight: 100,
          cardWidth: 100,
        ),
      ],
    ),
  );
}

// Apps Page Body Cards
class _AppsCard extends StatefulWidget {
  final String cardRoute;
  final String cardName;
  final String? cardTitle;
  final String cardImage;
  final double cardHeight;
  final double cardWidth;

  const _AppsCard({
    required this.cardRoute,
    required this.cardName,
    this.cardTitle,
    required this.cardImage,
    required this.cardHeight,
    required this.cardWidth,
  });

  @override
  State<_AppsCard> createState() => _AppsCardState();
}

class _AppsCardState extends State<_AppsCard> {
  bool _pressed = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: _pressed ? AppSizes.scaleSizeSm : AppSizes.scaleSizeMd,
      duration: Duration(milliseconds: 100),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.cardRadiusMd)),
        color: AppColors.surface,
        child: InkWell(
          onTap: () {
            if (widget.cardRoute == '') {
              setState(() {
                _pressed = false;
              });
            } else {
              context.push(widget.cardRoute);
            }
          },
          onTapDown: (_) {
            if (widget.cardRoute == '') {
              setState(() => _pressed = true);
            }
          },

          onTapUp: (_) {
            if (widget.cardRoute == '') {
              setState(() => _pressed = false);
            }
          },
          onTapCancel: () {
            if (widget.cardRoute == '') {
              setState(() => _pressed = false);
            }
          },
          splashColor: AppColors.primary.withAlpha(AppSizes.opacity30),
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
          child: SizedBox(
            width: widget.cardWidth * 1.5,
            height: widget.cardHeight * 1.5,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        widget.cardName,
                        style: AppTextStyles.withColor(AppTextStyles.h3, AppColors.primary),
                      ),

                      Visibility(
                        visible: widget.cardTitle != null,
                        child: Text(
                          widget.cardTitle ?? '',
                          style: AppTextStyles.withColor(
                            AppTextStyles.withWeight(AppTextStyles.bodyXsSmall, FontWeight.w500),
                            AppColors.textSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: AppSizes.imagePositionedBottom,
                  right: AppSizes.imagePositionedRight,
                  child: Image.asset(
                    widget.cardImage,
                    height: widget.cardHeight,
                    width: widget.cardWidth,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


/*











Container(
      padding: EdgeInsets.only(
        top: AppSizes.cardRadiusLg,
        left: AppSizes.cardRadiusLg,
        right: AppSizes.cardRadiusLg,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.cardName,
                style: AppTextStyles.withColor(AppTextStyles.h3, AppColors.primary),
              ),
              Text(
                widget.cardTitle1 ?? '',
                style: AppTextStyles.withColor(
                  AppTextStyles.withWeight(AppTextStyles.bodyXsSmall, FontWeight.w600),
                  AppColors.textSecondary,
                ),
              ),
              Text(
                widget.cardTitle2 ?? '',
                style: AppTextStyles.withColor(
                  AppTextStyles.withWeight(AppTextStyles.bodyXsSmall, FontWeight.w600),
                  AppColors.textSecondary,
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      // width: double.infinity,
                      color: Colors.red,
                      height: 50,
                      child: Text('data'),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Image(
                        image: AssetImage('assets/images/stork_images/apps_images/sepet1.webp'),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
*/