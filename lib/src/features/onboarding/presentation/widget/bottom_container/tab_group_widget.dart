import 'package:event_hub/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:event_hub/src/features/onboarding/presentation/widget/bottom_container/tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabWidgetGroup extends StatefulWidget{
  final ActiveTabType activeTab;
  const TabWidgetGroup({super.key,required this.activeTab});

  @override
  State<TabWidgetGroup> createState() => _TabWidgetGroupState();
}
class _TabWidgetGroupState extends State<TabWidgetGroup> {
  late  int total ;
  @override
  void initState() {
    total = ActiveTabType.values.length;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: [
       ...List<int>.generate(total,(index)=>index).map((e) => TabWidget(e==widget.activeTab.index),),
    ],);
  }
}