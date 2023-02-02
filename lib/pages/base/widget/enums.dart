import 'package:flutter/material.dart';
import 'package:flutter_version370/components/app_image.dart';

enum BottomBar {
  ticket,
  video,
  cinema,
  menu,
}

Widget $IconBottomBar({
  required BottomBar bottomBarIcon,
}) {
  switch (bottomBarIcon) {
    case BottomBar.ticket:
      return customBottomBarIcon(AppImage.icTicket);
    case BottomBar.menu:
      return customBottomBarIcon(AppImage.icProfile);
    case BottomBar.video:
      return customBottomBarIcon(AppImage.icVideoPlayer);
    case BottomBar.cinema:
      return customBottomBarIcon(AppImage.icCinema);
  }
}

String $TitleBottomBar({
  required BottomBar bottomBarIcon,
}) {
  switch (bottomBarIcon) {
    case BottomBar.ticket:
      return 'Ticket';
    case BottomBar.video:
      return 'Video';
    case BottomBar.cinema:
      return 'Cinema';
    case BottomBar.menu:
      return 'Menu';
  }
}

Widget customBottomBarIcon(String icon) {
  return Image.asset(
    icon,
    width: 30.0,
  );
}
