import 'package:flutter/material.dart';

import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class AnimatedImageContainer extends StatelessWidget {
  const AnimatedImageContainer(
      {super.key, this.height = 300, this.width = 250});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Container(
          height: height! * value,
          width: width! * value,
          padding: const EdgeInsets.all(defaultPadding / 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.blue,
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                    color: Colors.blue, offset: Offset(2, 0), blurRadius: 20),
              ]),
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              child: Image.asset(
                'assets/images/image.png',
                height: Responsive.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.2 : Responsive.isTablet(context) ? MediaQuery.sizeOf(context).width * 0.14
                    : 200,
                width: Responsive.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.2 :  Responsive.isTablet(context) ? MediaQuery.sizeOf(context).width * 0.14
                    : 200,
                fit: BoxFit.cover,
              )),
        );
      },
    );
  }
}

class MyPortfolioText extends StatelessWidget {
  const MyPortfolioText({super.key, required this.start, required this.end});

  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return TweenAnimationBuilder(
        tween: Tween(begin: start, end: end),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Text('My Personal Portfolio',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  height: 0,
                  fontSize: value));
        },
      );
    });
  }
}

class AnimatedSubtitleText extends StatelessWidget {
  final double start;
  final double end;
  final String text;

  const AnimatedSubtitleText(
      {super.key, required this.start, required this.end, required this.text});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          text,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              height: 0,
              fontSize: value),
        );
      },
    );
  }
}

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});

  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          'I\'m capable of creating excellent mobile apps, handling${Responsive.isLargeMobile(context) ? '\n' : ''}every step from ${!Responsive.isLargeMobile(context) ? '\n' : ''}concept to deployment.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}
