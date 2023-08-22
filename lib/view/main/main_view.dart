import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/main/components/navigation_bar.dart';


import '../../view model/responsive.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';

class MainView extends StatelessWidget {
   const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height:defaultPadding*2,),
             const SizedBox(
                height: 80,
                child: TopNavigationBar(),
            ),
            if(Responsive.isLargeMobile(context))  const Row(children: [Spacer(),NavigationButtonList(),Spacer()],),
            Expanded(
                flex: 9,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  controller: controller,
                  children: [
                    ...pages
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }




}








