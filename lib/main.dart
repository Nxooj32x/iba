import 'package:flutter/material.dart' hide Action;
import 'package:flutter/services.dart';

import 'src/flut/app.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom,SystemUiOverlay.top]);
    runApp(createApp());
  });
}
