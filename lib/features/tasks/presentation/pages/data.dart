import 'package:productive/assets/constants/colors.dart';
import 'package:productive/assets/constants/icons.dart';
import 'package:productive/features/tasks/presentation/pages/cls.dart';


List<Containers> titles = [
  Containers(
    title: "Create navigation bar",
    text:
    "I will design a navigation bar for the application I am working on, and choose it with suitable colors ",
    icon: AppIcons.lrnEnglish,
    isLink: false,
    time: "12:00 PM - 01:30 PM",
    color: create_nav,
    check: true,
  ),
  Containers(
    title: "English Study",
    text: "Review of the acoustics course lessons",
    icon: AppIcons.lrnEnglish,
    isLink: false,
    time: "12:00 PM - 01:30 PM",
    color: english_std,
    check: true,
  ),
  Containers(
    title: "Cleaning my room",
    text: "I will sort the books, redecorate the room",
    icon: AppIcons.task,
    isLink: false,
    time: "08:00 AM - 08:30 AM",
    color: cleaning,
    check: true,
  ),
  Containers(
    title: "Gym time",
    text: "empty",
    icon: AppIcons.gym,
    isLink: false,
    time: "03:00 PM - 04:30 PM",
    color: gymColor,
    check: false,
  ),
  Containers(
    title: "Meet the cdevs team",
    text: "We will discuss the new Tasks of the calendar pages",
    icon: AppIcons.gym,
    isLink: true,
    time: "05:00 PM - 05:30 PM",
    color: upcomingMeetColor,
    check: false,
  ),
  Containers(
    title: "Study for the constitutional judiciary test",
    text: "empty",
    icon: AppIcons.lrnEnglish,
    isLink: false,
    time: "06:00 PM - 08:30 PM",
    color: english_std,
    check: false,
  ),
];