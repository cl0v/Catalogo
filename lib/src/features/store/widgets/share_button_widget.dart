import 'package:flutter/material.dart';
import 'package:nutri/src/features/store/services/share_page_url_service.dart';

class ShareButtonWidget extends StatelessWidget {
  const ShareButtonWidget({Key? key}) : super(key: key);

  onPressed() {
    
    SharePageUrlService().share('');
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.share),
      onPressed: onPressed,
    );
  }
}
