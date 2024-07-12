import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/provider/app_provider.dart';

import 'package:folio/utils/utils.dart';
import 'package:provider/provider.dart';

import '../../widget/social_links.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
      final appProvider = Provider.of<AppProvider>(context);

    return Stack(
      children: [
        
        Container(
          margin: EdgeInsets.fromLTRB(
            AppDimensions.normalize(30),
            AppDimensions.normalize(30),
            0,
            AppDimensions.normalize(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'WELCOME TO MY PORTFOLIO! ',
                    style: AppText.b1!.copyWith(
                      fontFamily: 'Montserrat',
                      color: appProvider.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                  EntranceFader(
                    offset: const Offset(0, 0),
                    delay: const Duration(seconds: 2),
                    duration: const Duration(milliseconds: 800),
                    child: Image.asset(
                      StaticUtils.hi,
                      height: AppDimensions.normalize(12),
                    ),
                  ),
                ],
              ),
              Space.y1!,
              Text(
                "Noufel",
                style: AppText.h1!.copyWith(
                  fontFamily: 'Montserrat',
                  fontSize: AppDimensions.normalize(25),
                  fontWeight: FontWeight.w100,
                  color: appProvider.isDark ? Colors.white : Colors.black,
                ),
              ),
              Text(
                "Benabid",
                style: AppText.h1b!.copyWith(
                  fontSize: AppDimensions.normalize(25),
                  height: 1,
                  color: appProvider.isDark ? Colors.white : Colors.black,
                ),
              ),
              EntranceFader(
                offset: const Offset(-10, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppTheme.c!.primary!,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          'Flutter Developer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1!.copyWith(
                            
                            color: appProvider.isDark ? Colors.white : Colors.black,
                          ),
                        ),
                        TyperAnimatedText(
                          'Full Stack Mobile App Developer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1!.copyWith(
                            color: appProvider.isDark ? Colors.white : Colors.black,
                          ),
                        ),
                        TyperAnimatedText(
                          'Video Editor :)',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1!.copyWith(
                            color: appProvider.isDark ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
              ),
              
            const  SocialLinks()
            ],
          ),
        ),
      ],
    );
  }
}
