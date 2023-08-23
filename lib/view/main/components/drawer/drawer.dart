import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../res/constants.dart';
import 'header_info.dart';
import 'knowledges.dart';
import 'about.dart';
import 'my_skill.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: Column(
        children: [
          const About(),
          Expanded(
              child: Container(
                color: bgColor,
                child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(defaultPadding/2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: defaultPadding/2,),
                    const AreaInfoText(title: 'Contact', text: '03166657602'),
                    const AreaInfoText(title: 'Email', text: 'rh676838@gmail.com'),
                    const AreaInfoText(title: 'LinkedIn', text: '@hamad-anwar'),
                    const AreaInfoText(title: 'Github', text: '@hamad-anwar'),
                    const SizedBox(
                      height: defaultPadding,
                    ),

                    const Text('Skills',style: TextStyle(color: Colors.white),),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const MySKills(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: defaultPadding,),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(onPressed: () {launchUrl(Uri.parse('https://linkedin.com/in/hamad-anwar'));}, icon: SvgPicture.asset('assets/icons/linkedin.svg')),
                          IconButton(onPressed: () {launchUrl(Uri.parse('https://github.com/hamad-anwar'));}, icon: SvgPicture.asset('assets/icons/github.svg')),
                          const Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
            ),
          ),
              ))
        ],
      ),
    );
  }
}




