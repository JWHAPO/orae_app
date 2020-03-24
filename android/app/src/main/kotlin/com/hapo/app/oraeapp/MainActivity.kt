package com.hapo.app.oraeapp

import android.os.Build
import android.os.Bundle
import android.view.ViewTreeObserver
import android.view.WindowManager
import io.flutter.app.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            window.statusBarColor = 0x00000000
        }

        GeneratedPluginRegistrant.registerWith(FlutterEngine(this))

//        val vto: ViewTreeObserver = flutterView.viewTreeObserver
//        vto.addOnGlobalLayoutListener{ flutterView.viewTreeObserver.removeOnGlobalLayoutListener(it) }

        window.clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
    }

}
