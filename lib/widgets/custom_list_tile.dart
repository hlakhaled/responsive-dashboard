import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIconPath,
  });
  final String title;
  final String subtitle;
  final String leadingIconPath;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingIconPath.isNotEmpty
          ? SvgPicture.asset(leadingIconPath, width: 24, height: 24)
          : null,
      title: Text(title, style: AppStyles.styleBold16),
      subtitle: Text(subtitle, style: AppStyles.styleRegular12),
    );
  }
}
