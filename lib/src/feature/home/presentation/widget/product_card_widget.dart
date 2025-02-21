import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ofer/design_system/font/brand_font.dart';
import 'package:ofer/design_system/label/label.dart';
import 'package:ofer/design_system/style/brand_space.dart';
import 'package:ofer/design_system/widget/brand_sized_box.dart';
import 'package:ofer/design_system/widget/brand_text.dart';
import 'package:ofer/src/theme/colors.dart';

class ProductCardWidget extends StatelessWidget {
  final String? title, price, rating, image;
  final Function? onTap, addToCart;
  final bool enableAddToCart;
  const ProductCardWidget({
    super.key,
    this.addToCart,
    this.image,
    this.title,
    this.price,
    this.rating,
    this.onTap,
    this.enableAddToCart = true,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      closeOnScroll: true,
      enabled: enableAddToCart,
      key: ValueKey(UniqueKey()),
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          Expanded(
            child: InkWell(
              onTap: () => addToCart?.call(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColor.greyDC.withAlpha(100),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        size: 45,
                        color: AppColor.primary,
                      ),
                      BrandText.primary(data: Strings.addToCart)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width - 100,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColor.greyDC.withAlpha(100),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                image != null
                    ? Center(
                        child: CachedNetworkImage(
                          imageUrl: image!,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                                value: downloadProgress.progress),
                          ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          height: 70,
                        ),
                      )
                    : Center(child: Icon(Icons.image_search_rounded)),
                BrandVSpace(
                  height: BrandSpace.gap4,
                ),
                BrandText.primary(
                  data: title ?? Strings.na,
                ),
                BrandVSpace(
                  height: BrandSpace.gap4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BrandText.primary(
                      data: "\$" ' ${price ?? Strings.na}',
                      fontSize: BrandFontSize.headline3,
                    ),
                    BrandHSpace(
                      width: BrandSpace.gap6,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_border_purple500,
                          color: AppColor.secondary,
                        ),
                        BrandText.primary(
                          data: rating ?? Strings.na,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
