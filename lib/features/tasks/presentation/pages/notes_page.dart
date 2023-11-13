import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:productive/assets/constants/colors.dart';
import 'package:productive/assets/constants/icons.dart';
import 'package:gap/gap.dart';
// import 'package:productive/main.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(right: 16, top: 16),
          child: Text(
            'Notes',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: inactiveColor),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: Column(
            //
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Books",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: notesTxtColor),)
                ],
              ),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,//
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AppIcons.book1),
                      const Gap(8),
                      Text("Passwords",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: notesTxtColor),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AppIcons.book2),
                      const Gap(8),
                      Text("Memories",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: notesTxtColor),)
                    ],
                  ),
                  Stack(
                    children: [
                      // SvgPicture.asset(AppIcons.book3),
                      SvgPicture.asset(color: Colors.white,AppIcons.book3,),
                      SvgPicture.asset(color: Colors.white,AppIcons.book_left,),
                      SvgPicture.asset(color: Colors.red,AppIcons.book_plus,)
                    ],
                  )
                ],
              ),
              const Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Quick Notes",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: notesTxtColor),),
                  SvgPicture.asset(AppIcons.add)
                ],
              ),
              const Gap(17),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF2B304A),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text("Commitment resource lecture",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                    const Gap(4),
                    Text("We explained the definition of commitment and it..",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: notesTxtColor),),
                    const Gap(8),
                   const Text("15 November",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: inactiveColor),)
                  ],
                ),

              ),

              const Gap(12),
              Container(
                width:double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(8),
                  color: const Color(0xFF2B304A),
                ),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                   const Text('Duas',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w700,color: inactiveColor),),
                    const Gap(4),
                    Text('Allahuma aeni ealaa dikrika wa shukrika wa husn e..',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500,color: notesTxtColor),),
                    const Gap(8),
                   const Text('15 November',style:TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: inactiveColor),),
                    const Gap(8),
                  ],
                ),
              ),
              const Gap(12),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF2B304A),
                ),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                   const Text('Commitment resource lecture',style: TextStyle(fontSize:18,fontWeight: FontWeight.w700,color:inactiveColor),),
                    const Gap(4),
                    Row(
                    children: [
                       Text('We explained the definition of commitmen..',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: notesTxtColor),),
                      // SvgPicture.asset(AppIcons.arab),
                      const Gap(8),
                    ],
                    ),
                    const Gap(8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Text('15 November',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400,color: inactiveColor),),
                        const Gap(10),
                        SvgPicture.asset(AppIcons.ovoz,width: 24,height: 24),
                        const Gap(4),
                      ],
                    )
                  ],
                ),
              ),
                const Gap(12),
                Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF2B304A),
                ),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                     const Text('Commitment resource lecture',style: TextStyle(fontSize:18,fontWeight: FontWeight.w700,color:inactiveColor),),
                    const Gap(4),
                    Row(
                      children: [
                        Text('We explained the definition of commitment and it..',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: notesTxtColor),),
                       const Gap(8),
                      ],
                    ),
                    const Gap(8),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('15 November',style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400,color: inactiveColor),),
                      ],
                    )
                  ],
                ),
              ),
              const Gap(12),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF2B304A),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const Text('Commitment resource lecture',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: inactiveColor),),
                     const Gap(4),
                    Text('We explained the definition of commitment and it..',style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,color:notesTxtColor ),),
                    const Gap(8),
                    const Text('15 November',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: inactiveColor),),
                  ],
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}













