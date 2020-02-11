package com.beaute.interior.iba;

import android.os.Bundle;

import com.beaute.interior.iba.customview.CustomWebFlutterPlugin;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity{
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
    CustomWebFlutterPlugin.registerWith(this);
  }
}


