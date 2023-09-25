
import 'package:flutter/material.dart';

import '../../../../core/managers/color_manager.dart';

class DrawerItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback handler;
  const DrawerItem({
    Key? key,
    required this.iconData,
    required this.title,
    required this.handler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData,color: ColorManager.primary,),
      title: Text(title),
      onTap: handler,
    );
  }
}
