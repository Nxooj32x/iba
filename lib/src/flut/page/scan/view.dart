import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qr_reader/qrcode_reader_view.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ScanState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      body: QrcodeReaderView(
        key: state.key,
        onScan: (data) async {
          print(data);
        },
        headerWidget: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
      ),
  );
}
