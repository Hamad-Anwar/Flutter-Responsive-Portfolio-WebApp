import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/project_deatail.dart';
import 'package:get/get.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';
import 'image_viewer.dart';

class ProjectStack extends StatelessWidget {
  final controller = Get.put(ProjectController());
  ProjectStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        ImageViewer(context,projectList[index].image);
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: ProjectDetail(index: index,),
      ),
    );
  }
}