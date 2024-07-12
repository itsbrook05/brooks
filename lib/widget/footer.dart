import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
      final appProvider = Provider.of<AppProvider>(context);
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
             Text(
              "Developed By ",
              style: TextStyle(
                          color: appProvider.isDark ? Colors.white : Colors.black,
                        ),
              
            ),
            InkWell(
              onTap: () => openURL("https://github.com/itsbrook05"),
              child: const Text(
                "Brooks",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
