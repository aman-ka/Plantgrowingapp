import 'package:flutter/material.dart';

class AdaptiveTextSize {
  //const AdaptiveTextSize(BuildContext context, int i, double d);

  getadaptiveTextSize(BuildContext context, dynamic value) {
    // 720 is medium screen height
    return (value / 720) * MediaQuery.of(context).size.height;
  }
}
