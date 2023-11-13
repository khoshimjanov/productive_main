import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:productive/assets/constants/colors.dart';
import 'package:productive/assets/constants/icons.dart';
import 'package:productive/features/tasks/presentation/pages/data.dart';
class AllPage extends StatefulWidget {
  const AllPage({super.key});

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          padding:
              const EdgeInsets.only(top: 8, left: 10, right: 10, bottom: 8),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: textFieldBackgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: titles[index].color,
                    ),
                    child: SvgPicture.asset(titles[index].icon.toString()),
                  ),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 223,
                        child: Text(
                          titles[index].title.toString(),
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: white),
                        ),
                      ),
                      Text(
                        titles[index].time.toString(),
                        style: TextStyle(
                          color: upcomingTextColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  titles[index].check!
                      ? GestureDetector(
                          onTap: () {
                            titles[index].check = false;
                            setState(() {});
                          },
                          child: Container(
                            width: 18,
                            height: 19,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: activeColor,
                                borderRadius: BorderRadius.circular(6)),
                            child: Icon(Icons.check,color: Colors.white,size: 14,),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            titles[index].check = true;
                            setState(() {});
                          },
                          child: Container(
                            width: 17,
                            height: 18,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: activeColor, width: 2),
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                ],
              ),
              if (titles[index].text != "empty")
                Container(
                  margin: EdgeInsets.only(top: 8, bottom: 8),
                  width: 315,
                  child: Text(
                    titles[index].text.toString(),
                    style: TextStyle(fontSize: 14, color: white),
                  ),
                ),
              if (titles[index].isLink!)
                Row(children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: upcomingLinkBolt),
                    child: SvgPicture.asset(AppIcons.link),
                  ),
                  Container(
                    height: 24,
                    width: 89,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: upComingLink,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Link to meeting",
                      style: TextStyle(color: white, fontSize: 12),
                    ),
                  )
                ])
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, index) {
        return Gap(0);
      },
    );
  }
}

// Container(
// height: 54,
// margin: const EdgeInsets.all(16),
// padding: const EdgeInsets.only(
// top: 8,
// bottom: 8,
// right: 8,
// left: 10,
// ),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(8),
// color: textFieldBackgroundColor,
// ),
// child: Row(
// children: [
// Container(
// height: 38,
// width: 38,
// margin: const EdgeInsets.only(right: 10),
// padding: const EdgeInsets.all(7),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: gymColor,
// ),
// child: SvgPicture.asset(AppIcons.gym),
// ),
// const Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'Gym time',
// style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
// ),
// Text(
// '03:00 PM - 04:30 PM',
// style: TextStyle(fontSize: 14, color: upcomingTextColor),
// )
// ],
// ),
// const Spacer(),
// Container(
// height: 18,
// width: 17,
// margin: const EdgeInsets.only(right: 10),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(6),
// border: Border.all(
// width: 2,
// color: activeColor,
// ),
// ),
// ),
// ],
// ),
// ),

// Container
// (
// height: 24,
// width: 121,
// padding: const EdgeInsets.only(right: 8),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(4),
// ),
// child: Row(
// children: [
// Container(
// height: 24,
// width: 24,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(4),
// color: upcomingLinkBolt),
// child: SvgPicture.asset(AppIcons.link),
// ),
// Container(
// height: 24,
// width: 89,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(4),
// color: upComingLink,
// ),
// alignment: Alignment.center,
// child: const Text(
// "Link to meeting",
// style: TextStyle(color: white, fontSize: 12),
// ),
// )
// ]
// ,
// )
// ,
// )
// ,
// Padding(
// padding: const EdgeInsets.all(16.0),
// child: Container(
// height: 73,
// width: double.maxFinite,
// padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(8),
// color: textFieldBackgroundColor,
// border: Border.all(width: 1, color: upComingBorderSolid),
// ),
// child: Row(
// children: [
// Container(
// height: 38,
// width: 38,
// padding: EdgeInsets.all(9.09),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: studyIconColor,
// ),
// child: SvgPicture.asset(AppIcons.studyIcon),
// ),
// const Gap(10),
// const Column(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// "Study for the constitutional\njudiciary test",
// style: TextStyle(
// fontSize: 16,
// fontWeight: FontWeight.w600,
// color: white,
// ),
// ),
// // const Gap(2),
// Text(
// "06:00 PM - 08:30 PM",
// style: TextStyle(fontSize: 14, color: upcomingTextColor),
// ),
// ],
// ),
// const Spacer(),
// Column(
// children: [
// Container(
// height: 18,
// width: 17,
// decoration: BoxDecoration(
// border: Border.all(width: 2, color: activeColor),
// borderRadius: BorderRadius.circular(6)),
// padding: const EdgeInsets.only(
// right: 4, top: 3, bottom: 3, left: 3),
// margin: const EdgeInsets.only(right: 18),
// ),
// ],
// ),
// ],
// ),
// ),
// ),
