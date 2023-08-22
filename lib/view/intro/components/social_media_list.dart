import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../res/constants.dart';

class SocialMediaIconList extends StatelessWidget {
  const SocialMediaIconList({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);
    return TweenAnimationBuilder(tween: Tween(begin: 0.0,end: 1.0), duration: const Duration(milliseconds: 200), builder: (context, value, child) {
      return Transform.scale(scale: value,
      child:  Column(
        children: [
          const Spacer(),
          RotatedBox(
            quarterTurns: -3,
            child: Text('Follow Me',style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),),
          ),
          Container(
            height: size.height*0.06,
            width: 3,
            margin: const EdgeInsets.symmetric(vertical: defaultPadding * 0.5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(defaultPadding)
            ),
          ),
           SocialMediaIcon(icon: 'assets/icons/linkedin.svg',onTap: ()=>launchUrl(Uri.parse('https://www.linkedin.com/in/hamad-anwar/'))),
          SocialMediaIcon(icon: 'assets/icons/github.svg',onTap: () => launchUrl(Uri.parse('https://github.com/Hamad-Anwar')),),
          const SocialMediaIcon(icon: 'assets/icons/dribble.svg',),
          const SocialMediaIcon(icon: 'assets/icons/twitter.svg'),
          const SocialMediaIcon(icon: 'assets/icons/linkedin.svg'),
          const Spacer(),
        ],
      ),
      );
    },);
  }
}
class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key, required this.icon,  this.onTap});
  final String icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap:onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4),
        child: SvgPicture.asset(icon,color: Colors.white,height: 15,width: 15,),
      ),
    );
  }
}