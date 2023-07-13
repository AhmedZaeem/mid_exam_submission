import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../consts.dart';

class service extends StatefulWidget {
  const service({super.key});

  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {
  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocale = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 48.h),
          decoration: BoxDecoration(
            gradient: linearGradientHorizntal,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(32.r)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              SvgPicture.asset(
                'assets/images/svgImages/bottom1.svg',
                height: 70.h,
                width: 70.h,
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
              SizedBox(width: 16.w),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          appLocale.selectService,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        SizedBox(height: 17.h),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 12,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.w,
                childAspectRatio: 3 / 2,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: .5.w, color: Colors.red),
                      borderRadius: BorderRadius.circular(16.r)),
                  child: Column(
                    children: [
                      SizedBox(height: 16.h),
                      Icon(Icons.ac_unit),
                      Text('text'),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
