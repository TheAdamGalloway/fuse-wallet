import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fusecash/constans/keys.dart';
import 'package:fusecash/generated/i18n.dart';

class BottomBar extends StatelessWidget {
  final int tabIndex;
  final void Function(int) onTap;
  BottomBar({Key key, this.tabIndex = 0, this.onTap}) : super(key: key);

  BottomNavigationBarItem bottomBarItem(String title, String imgSvg) {
    return BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(top: 5, bottom: 3),
          child: SvgPicture.asset('assets/images/$imgSvg\.svg'),
        ),
        activeIcon: Padding(
          padding: EdgeInsets.only(top: 5, bottom: 3),
          child: SvgPicture.asset('assets/images/$imgSvg\_selected.svg'),
        ),
        label: title);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xFF292929),
      key: AppKeys.bottomBarKey,
      selectedFontSize: 13,
      unselectedFontSize: 13,
      type: BottomNavigationBarType.fixed,
      currentIndex: tabIndex,
      backgroundColor: Theme.of(context).bottomAppBarColor,
      showUnselectedLabels: true,
      items: [
        bottomBarItem(I18n.of(context).home, 'home'),
        bottomBarItem(I18n.of(context).send_button, 'send'),
        bottomBarItem(I18n.of(context).buy, 'buy'),
        bottomBarItem(I18n.of(context).receive, 'receive'),
      ],
      onTap: onTap,
    );
  }
}
