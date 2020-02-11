package com.beaute.interior.iba.customview;

import io.flutter.plugin.common.PluginRegistry;

public class CustomWebFlutterPlugin {

    public static void registerWith(PluginRegistry registry) {
        final String key = CustomWebFlutterPlugin.class.getCanonicalName();
        if (registry.hasPlugin(key)) return;
        PluginRegistry.Registrar registrar = registry.registrarFor(key);
        registrar.platformViewRegistry().registerViewFactory("plugins.com.beaute.interior.iba/customwebview", new CustomWebViewFactory(registrar.messenger()));
    }
}
