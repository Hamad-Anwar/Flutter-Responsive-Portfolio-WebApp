import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://linkedin.com/in/hamad-anwar'));}, icon: SvgPicture.asset('assets/icons/linkedin.svg')),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://github.com/hamad-anwar'));}, icon: SvgPicture.asset('assets/icons/github.svg')),
          const Spacer(),
        ],
      ),
    );
  }
}
