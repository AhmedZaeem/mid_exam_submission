import 'package:ahmed_el_zaeem/Helpers/NavigationHelper.dart';
import 'package:ahmed_el_zaeem/Widgets/My_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Home.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> with NavigationHelper {
  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocale = AppLocalizations.of(context)!;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          SvgPicture.asset('assets/images/svgImages/onBoarding2.svg'),
          SizedBox(height: 64.5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.w),
            child: Text(
              appLocale.onBoarding1,
              style: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.primary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: My_Button(
              buttonText: appLocale.next,
              hasGradient: true,
              onTap: () =>
                  jump(context: context, to: const Home(), replace: true),
            ),
          ),
          SizedBox(height: 34.h),
        ],
      ),
    );
  }
}
