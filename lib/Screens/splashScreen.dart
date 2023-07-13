import 'package:ahmed_el_zaeem/Helpers/NavigationHelper.dart';
import 'package:ahmed_el_zaeem/Screens/onBoarding.dart';
import 'package:ahmed_el_zaeem/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> with NavigationHelper {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => jump(context: context, to: const onBoarding(), replace: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
          gradient: linearGradientVertical,
        ),
        child: Stack(
          children: [
            PositionedDirectional(
                end: -200.w,
                top: 200.h,
                child:
                    SvgPicture.asset('assets/images/svgImages/splashIcon.svg')),
          ],
        ),
      ),
    );
  }
}
