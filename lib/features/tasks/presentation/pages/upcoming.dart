import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:productive/assets/constants/colors.dart';
import 'package:productive/assets/constants/icons.dart';
import 'package:productive/features/tasks/presentation/pages/data.dart';

class UpcomingPage extends StatefulWidget {
  const UpcomingPage({super.key});

  @override
  State<UpcomingPage> createState() => _UpcomingPageState();
}

class _UpcomingPageState extends State<UpcomingPage> {
  @override
  void didChangeDependencies() {
    setState(() {});
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        if (titles[index].check!) {
          print("Heeeeeeeeeeeeeeee ${titles[index].check}");
          return Dismissible(
            key: Key(index.toString()),
            onDismissed: (direction) {
              setState(() {
                titles[index].check = false;
              });
            },
            child: Container(
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
                          child: Icon(
                            Icons.check, color: Colors.white, size: 14,),
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
            ),
          );
        }
      },
      separatorBuilder: (BuildContext context, index) {
        return Gap(0);
      },
    );
  }
}
