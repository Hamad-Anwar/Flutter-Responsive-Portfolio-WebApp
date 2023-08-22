import 'package:flutter/material.dart';

import '../../../res/constants.dart';
import '../../../view model/responsive.dart';
import 'animated_texts_componenets.dart';
import 'download_button.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!Responsive.isDesktop(context)) SizedBox(height: size.height * 0.06,),
              if (!Responsive.isDesktop(context))
                Row(
                  children: [
                    SizedBox(width: size.width*0.23,),
                    const AnimatedImageContainer(width: 150,height: 200,),
                  ],
                ),
              if (!Responsive.isDesktop(context)) SizedBox(height: size.height * 0.1,),
              const Responsive(
                  desktop: MyPortfolioText(start: 40, end: 50),
                  largeMobile: MyPortfolioText(start: 40, end: 35),
                  mobile: MyPortfolioText(start: 35, end: 30),
                  tablet: MyPortfolioText(start: 50, end: 40)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Responsive(
                    desktop: AnimatedSubtitleText(
                        start: 30, end: 40, text: 'Flutter '),
                    largeMobile: AnimatedSubtitleText(
                        start: 30, end: 25, text: 'Flutter '),
                    mobile: AnimatedSubtitleText(
                        start: 25, end: 20, text: 'Flutter '),
                    tablet: AnimatedSubtitleText(
                        start: 40, end: 30, text: 'Flutter '),
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.pinkAccent,
                            Colors.blue.shade900,
                          ]).createShader(bounds);
                    },
                    child: const Responsive(
                      desktop: AnimatedSubtitleText(
                          start: 30, end: 40, text: 'Developer '),
                      largeMobile: AnimatedSubtitleText(
                          start: 30, end: 20, text: 'Developer '),
                      mobile: AnimatedSubtitleText(
                          start: 20, end: 25, text: 'Developer '),
                      tablet: AnimatedSubtitleText(
                          start: 40, end: 30, text: 'Developer '),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              const Responsive(
                desktop: AnimatedDescriptionText(start: 14, end: 15),
                largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                mobile: AnimatedDescriptionText(start: 14, end: 12),
                tablet: AnimatedDescriptionText(start: 17, end: 14),
              ),
              const SizedBox(
                height: defaultPadding * 2,
              ),
              const DownloadButton(),
            ],
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context))
          const AnimatedImageContainer(),
        const Spacer()
      ],
    );
  }
}
