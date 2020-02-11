package com.beaute.interior.iba;

import android.content.Context;
import android.os.Bundle;
import android.os.Environment;
import android.widget.Toast;

import com.beaute.interior.iba.customview.CustomWebFlutterPlugin;
import com.ryg.dynamicload.internal.DLIntent;
import com.ryg.dynamicload.internal.DLPluginManager;
import com.ryg.dynamicload.internal.DLPluginPackage;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity{
  private static final String CHANNEL = "samples.flutter.io/battery";
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
            new MethodChannel.MethodCallHandler() {
              @Override
              public void onMethodCall(MethodCall call, MethodChannel.Result result) {
                  loadPlugin();
                  startPluginActivity(MainActivity.this, new DLIntent("com.practise.pluginapp"
                          , "com.practise.pluginapp.MainActivity"));
              }
            });
    GeneratedPluginRegistrant.registerWith(this);
    CustomWebFlutterPlugin.registerWith(this);
  }

    private void loadPlugin() {
        //apk名称
        String apkName = "app-release.apk";
        //插件apk的位置
        String apkAllPath = Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "plugs" + "/"
                + "/" + apkName;

        //加载插件apk到内存中
        DLPluginPackage dlPluginPackage = DLPluginManager.getInstance(this).loadApk(apkAllPath);

        if(dlPluginPackage.classLoader != null){
            Toast.makeText(this, "加载插件apk到内存中成功!",Toast.LENGTH_SHORT).show();
        }
    }

    private void startPluginActivity(Context context, DLIntent intent) {
        DLPluginManager dlPluginManager = DLPluginManager.getInstance(context);
        dlPluginManager.startPluginActivity(this, intent);
    }
}


