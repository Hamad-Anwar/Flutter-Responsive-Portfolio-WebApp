import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
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
    var size=MediaQuery.sizeOf(context);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(alignment: Alignment.topCenter,child: Text(
                projectList[index].name,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),),
             Responsive.isMobile(context) ?  const SizedBox(height: defaultPadding/2,) : const SizedBox(height: defaultPadding,),
              Text(projectList[index].description,style: const TextStyle(color: Colors.grey,height: 1.5),maxLines: size.width>700 && size.width< 750 ? 3:  size.width<470  ? 2  : size.width>600 && size.width<700 ?     6:  size.width>900 && size.width <1060 ? 6: 4 ,overflow: TextOverflow.ellipsis,),
              const Spacer(),
              Row(
                children: [
                  Row(
                    children: [
                      const Text('Check on Github',style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis),
                      IconButton(onPressed: () {launchUrl(Uri.parse(projectList[index].link));}, icon: SvgPicture.asset('assets/icons/github.svg')),
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                    launchUrl(Uri.parse(projectList[index].link));
                  }, child: const Text('Read More>>',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10),))
                ],
              ),
              const SizedBox(height: defaultPadding/2,),
            ],
          )),
    );
  }
}