import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

void main() => runApp(MaterialApp(home: Demo()));

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(window.physicalSize);

    String platformType;
    switch (UniversalPlatform.value) {
      case UniversalPlatformType.Web:
        platformType = "Web";
        break;
      case UniversalPlatformType.Android:
      case UniversalPlatformType.Fuchsia:
      case UniversalPlatformType.IOS:
        platformType = "Mobile";
        break;
      case UniversalPlatformType.Linux:
      case UniversalPlatformType.MacOS:
      case UniversalPlatformType.Windows:
        platformType = "Desktop";
        break;
    }

    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Web: ${UniversalPlatform.isWeb} \n "
            "MacOS: ${UniversalPlatform.isMacOS} \n"
            "Windows: ${UniversalPlatform.isWindows} \n"
            "Linux: ${UniversalPlatform.isLinux} \n"
            "Android: ${UniversalPlatform.isAndroid} \n"
            "IOS: ${UniversalPlatform.isIOS} \n"
            "Fuschia: ${UniversalPlatform.isFuchsia} \n",
          ),
          Text(
            "Platform type: $platformType",
          ),
        ],
      ),
    );
  }
}
