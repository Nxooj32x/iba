import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ProfitState state, Dispatch dispatch, ViewService viewService) {
  return  AndroidView(viewType: 'plugins.com.beaute.interior.iba/customwebview');
}
