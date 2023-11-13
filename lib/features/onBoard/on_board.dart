import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:productive/assets/constants/colors.dart';
import 'package:productive/assets/constants/icons.dart';
import 'package:productive/assets/constants/images.dart';
import 'package:productive/main.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final _controller = PageController();
  int thisPage = 0;
  @override
  void initState() {
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed("/home");
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "SKIP",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: onBoardingButtonColor),
                )
              ],
            ),
          ),
        ),
      ]),
      body: PageView(
        onPageChanged: (value) {
          thisPage = value;
          print(thisPage);
        },
        controller: _controller,
        children: [
          Column(
            children: [
              const Gap(83),
              Container(
                child: Image.asset(AppImages.first_page),
              ),
              const Gap(40),
              Container(
                width: 301,
                alignment: Alignment.center,
                child: const Column(
                  children: [
                    Text(
                      "Easy Time Management",
                      style: TextStyle(
                          color: onBoardingBigTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    const Gap(6),
                    Text(
                      "We help you stay organized and manage your day",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: onBoardingBigTextColor),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Gap(83),
              Container(
                child: Image.asset(AppImages.second_page),
              ),
              const Gap(40),
              Container(
                width: 301,
                alignment: Alignment.center,
                child: const Column(
                  children: [
                    Text(
                      "Track Your Expense",
                      style: TextStyle(
                          color: onBoardingBigTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    const Gap(6),
                    Text(
                      "We help you organize your expenses easily and safely",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: onBoardingBigTextColor),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          thisPage == 1
              ? Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 24,
                    left: MediaQuery.of(context).padding.left + 24,
                  ),
                  child: GestureDetector(
                    onTap: (){
                      _controller.previousPage(duration: Duration(milliseconds: 250), curve: Curves.ease);
                    },
                    child: Container(
                      width: 44,
                      height: 44,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: onBoardingButtonColor,
                      ),
                      child: SvgPicture.asset(AppIcons.back2),
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 24,
                    left: MediaQuery.of(context).padding.left + 24,
                  ),
                  child: const SizedBox(
                    width: 44,
                    height: 44,
                  ),
                ),
          Row(
            children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: thisPage == 0 ? 24 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: thisPage == 1 ? smallBut : onBoardingButtonColor,
                    ),
                  ),
              AnimatedContainer(
                margin: EdgeInsets.only(left: 4),
                duration: const Duration(milliseconds: 250),
                width: thisPage == 0 ? 8 : 24,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: thisPage == 0 ? smallBut : onBoardingButtonColor,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 24,
              right: MediaQuery.of(context).padding.right + 24,
            ),
            child: GestureDetector(
              onTap: (){
                if(thisPage == 0){
                  _controller.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease);
                }else{
                  Navigator.of(context).pushNamed("/home");
                }
              },
              child: Container(
                width: 44,
                height: 44,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: onBoardingButtonColor,
                ),
                child: SvgPicture.asset(AppIcons.back),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
