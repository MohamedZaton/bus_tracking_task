import 'package:bus_tracking_task/themes/colors.dart';
import 'package:flutter/material.dart';

/// icons

ImageIcon kBuoyIcon = kImageIcon(
  iconPath: 'assets/icons/buoy.png',
);
ImageIcon kSwapIcon = kImageIcon(
  iconPath: 'assets/icons/swap.png',
);

ImageIcon kClockIconIcon = kImageIcon(
  iconPath: 'assets/icons/clock_icon.png',
);
ImageIcon kArrowCirculeIcon = kImageIcon(
  iconPath: 'assets/icons/right-arrow.png',
);
ImageIcon kSettingIcon = kImageIcon(
  iconPath: 'assets/icons/setting.png',
);
ImageIcon kSignedIcon = kImageIcon(
  iconPath: 'assets/icons/signed.png',
);
ImageIcon kDirectIngIcon = kImageIcon(
  iconPath: 'assets/icons/direct-instagram.png',
);

Icon kBackArrowIcon({double iconSize = 32.0}) {
  return Icon(
    Icons.arrow_back,
    size: iconSize,
  );
}

Icon kMenuBarIcon({double iconSize = 32.0}) {
  return Icon(
    Icons.menu,
    size: iconSize,
  );
}

Icon kProfileIcon({double iconSize = 32.0}) {
  return Icon(
    Icons.person_outline_outlined,
    size: iconSize,
  );
}

Icon kCurrentLocatIcon({double iconSize = 32.0}) {
  return Icon(
    Icons.location_searching,
    size: iconSize,
  );
}

Icon kShareIcon({double iconSize = 32.0}) {
  return Icon(
    Icons.share_outlined,
    size: iconSize,
  );
}

/// tab icons
Icon kMapTabIcon({double iconSize = 32.0}) {
  return Icon(
    Icons.map_outlined,
    size: iconSize,
  );
}

ImageIcon kWarningTabIcon = kImageIcon(
  iconPath: 'assets/icons/warning.png',
);

Icon kCalenderTabIcon({double iconSize = 32.0}) {
  return Icon(
    Icons.calendar_today,
    size: iconSize,
  );
}

Icon kGiftTabIcon({double iconSize = 32.0}) {
  return Icon(
    Icons.card_giftcard,
    size: iconSize,
  );
}

/// *** tab icons end

Icon kLoveTabIcon({double iconSize = 32.0}) {
  return Icon(
    Icons.favorite_border,
    size: iconSize,
  );
}

ImageIcon kImageIcon({required String iconPath, double? iconSize = 32.0}) {
  return ImageIcon(
    AssetImage(iconPath),
    size: iconSize,
    color: kTextBlack,
  );
}
