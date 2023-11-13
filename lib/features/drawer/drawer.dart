import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:productive/assets/constants/colors.dart';
import 'package:productive/assets/constants/icons.dart';
import 'package:productive/assets/constants/images.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 72,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 20,
                left: 16,
                right: 16,
                bottom: 33.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      height: 24,
                      width: 24,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: SvgPicture.asset(AppIcons.light),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: SvgPicture.asset(AppIcons.sun),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      child: Image.asset(AppImages.profile),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rozan",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: onPrimaryColor,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "rozan.hasan.matar115@gmail...",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(fontSize: 14, color: onPrimaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, bottom: 20),
            width: 99,
            height: 24,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset(AppIcons.premium),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Premium",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: onPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, bottom: 28),
            width: 95,
            height: 24,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  padding: EdgeInsets.all(2),
                  child:
                      SvgPicture.asset(AppIcons.settings, color: onIconColor),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: onPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 16,
            ),
            width: 91,
            height: 24,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  // padding: EdgeInsets.only(left: 4,right: 4,top: 2,bottom: 2),
                  child:
                      SvgPicture.asset(AppIcons.articles, color: onIconColor),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Articles",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: onPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Divider(
              height: 0.5,
              color: onPrimaryColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, bottom: 24, top: 16),
            width: 68,
            height: 24,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset(AppIcons.help,),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Help",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: onPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 16,
              bottom: 24,
            ),
            width: 80,
            height: 24,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  padding: EdgeInsets.all(2),
                  child: SvgPicture.asset(AppIcons.terms, color: onIconColor),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Terms",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: onPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              bottom: 24,
            ),
            width: 64,
            height: 24,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  padding: EdgeInsets.all(2),
                  child: SvgPicture.asset(AppIcons.faq, color: onIconColor),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Faq",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: onPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
