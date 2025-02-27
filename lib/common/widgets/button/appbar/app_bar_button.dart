import 'package:flutter/material.dart';
import 'package:spotify_clone_app/common/helpers/is_dark_mode.dart';

class BasicAppBarButton extends StatelessWidget implements PreferredSizeWidget {
  final Widget ? title;
  const BasicAppBarButton({
      this.title,
      super.key  
    });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: this.title ?? const Text(''),
      centerTitle: true,
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: context.isDarkMode ? Colors.white.withOpacity(0.05) : Colors.black.withOpacity(0.05),
            shape: BoxShape.circle,          
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}