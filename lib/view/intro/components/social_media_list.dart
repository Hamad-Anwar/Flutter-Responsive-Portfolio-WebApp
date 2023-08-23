import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_media_coloumn.dart';
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
          const SocialMediaIconColumn(),
          const Spacer(),
        ],
      ),
      );
    },);
  }
}


