import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qr_reader/qrcode_reader_view.dart';

class ScanState implements Cloneable<ScanState> {

  GlobalKey<QrcodeReaderViewState> key = GlobalKey();


  @override
  ScanState clone() {
    return ScanState()..key = key;
  }
}

ScanState initState(Map<String, dynamic> args) {
  return ScanState();
}
