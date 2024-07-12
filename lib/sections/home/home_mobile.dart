import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';

import 'package:folio/utils/utils.dart';
import 'package:provider/provider.dart';

import '../../provider/app_provider.dart';
import '../../widget/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
  
      final appProvider = Provider.of<AppProvider>(context);

    return SizedBox(
      
      child: Stack(
        children: [
          
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(10),
              AppDimensions.normalize(40),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HEY THERE! ",
                      style: AppText.b2!.copyWith(
                        fontFamily: 'Montserrat',
                        color: appProvider.isDark ? Colors.white : Colors.black,
            
          
                      ),
                    ),
                    Space.x!,
                    Image.asset(
                      StaticUtils.hi,
                      height: AppDimensions.normalize(10),
                    ),
                  ],
                ),
                Space.y!,
                Text(
                  "Noufel",
                  style: AppText.h3!.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w100,
                    color: appProvider.isDark ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  "Benabid",
                  style: AppText.h3b!.copyWith(
                    height: 1,
                    color: appProvider.isDark ? Colors.white : Colors.black,
                  ),
                ),
                Space.y!,
                Row(
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
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
                
              const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
