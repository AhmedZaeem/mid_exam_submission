import 'package:ahmed_el_zaeem/Screens/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocale = AppLocalizations.of(context)!;
    return Scaffold(
      body: [service(), Placeholder(), Placeholder(), Placeholder()][_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (tappedItemIndex) => setState(() {
          _index = tappedItemIndex;
        }),
        currentIndex: _index,
        unselectedLabelStyle: TextStyle(fontSize: 8.sp, color: Colors.white),
        selectedLabelStyle: TextStyle(fontSize: 8.sp, color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.primary,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/svgImages/bottom1.svg'),
            label: appLocale.service,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/svgImages/bottom2.svg'),
            label: appLocale.order,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/svgImages/bottom3.svg'),
            label: appLocale.user,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/svgImages/bottom4.svg'),
            label: appLocale.more,
          ),
        ],
      ),
    );
  }
}
