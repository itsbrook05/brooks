import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/about_utils.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/tech_widget.dart';
import 'package:provider/provider.dart';

import '../../provider/app_provider.dart';


class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
      final appProvider = Provider.of<AppProvider>(context);

    return Column(
      children: [
      
        Row(
          children: [
            Expanded(
              child: Image.asset(
                StaticUtils.coloredPhoto,
                height: height * 0.7,
              ),
            ),
            Expanded(
              flex: width < 1230 ? 2 : 1,
              child: Container(
                padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Who am I?',
                      style: AppText.b1!.copyWith(
                        color: AppTheme.c!.primary,
                      ),
                    ),
                    Space.y1!,
                    Text(
                      AboutUtils.aboutMeHeadline,
                      style: AppText.b1b!.copyWith(
                        fontFamily: 'Montserrat',
                          color: appProvider.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    Space.y!,
                    Text(
                      AboutUtils.aboutMeDetail,
                      style: AppText.b2!.copyWith(
                        height: 2,
                        letterSpacing: 1.1,
                        fontFamily: 'Montserrat',
                        color: appProvider.isDark ? Colors.white : Colors.black,
                        fontSize: AppDimensions.normalize(5),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Space.y!,
                    Divider(
                      color: Colors.grey[800],
                      thickness: AppDimensions.normalize(0.5),
                    ),
                    Space.y!,
                    Text(
                      'Technologies I have worked with:',
                      style: AppText.l1!.copyWith(
                        color: AppTheme.c!.primary,
                      ),
                    ),
                    Space.y!,
                    Row(
                      children: kTools
                          .map((e) => ToolTechWidget(
                                techName: e,                                  
                              ))
                          .toList(),
                    ),
                    Space.y!,
                    Divider(
                      color: Colors.grey[800],
                      thickness: AppDimensions.normalize(0.5),
                    ),
                    const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AboutMeData(
                              data: "Name",
                              information: "Noufel Benabid",
                            ),
                            AboutMeData(
                              data: "Age",
                              information: "23",
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AboutMeData(
                              data: "Email",
                              information: "salameroke05@gmail.com",
                            ),
                            AboutMeData(
                              data: "From",
                              information: "Batna, Dz",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Space.y1!,
                    
                  ],
                ),
              ),
            ),
            Container(
              width: width < 1230 ? width * 0.05 : width * 0.1,
            ),
          ],
        )
      ],
    );
  }
}
