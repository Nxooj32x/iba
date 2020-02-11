/*
 * Copyright (C) 2014 singwhatiwanna(任玉刚) <singwhatiwanna@gmail.com>
 *
 * collaborator:田啸,宋思宇,Mr.Simple
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.ryg.dynamicload;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnClickListener;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.WindowManager.LayoutParams;

import com.ryg.dynamicload.internal.DLAttachable;
import com.ryg.dynamicload.internal.DLPluginManager;
import com.ryg.dynamicload.internal.DLProxyImpl;

import androidx.fragment.app.FragmentActivity;

public class DLProxyFragmentActivity extends FragmentActivity implements DLAttachable {

    protected DLPlugin mRemoteActivity;
    private DLProxyImpl impl;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        impl = new DLProxyImpl(DLProxyFragmentActivity.this);
        impl.onCreate(getIntent());
    }

    @Override
    public void attach(DLPlugin remoteActivity, DLPluginManager pluginManager) {
        mRemoteActivity = remoteActivity;
    }

    @Override
    public AssetManager getAssets() {
        if (impl == null) {
            impl = new DLProxyImpl(DLProxyFragmentActivity.this);
        }
        return impl.getAssets() == null ? super.getAssets() : impl.getAssets();
    }

    @Override
    public Resources getResources() {
        if (impl == null) {
            impl = new DLProxyImpl(DLProxyFragmentActivity.this);
        }
        return impl.getResources() == null ? super.getResources() : impl.getResources();
    }

    @Override
    public Theme getTheme() {
        if (impl == null) {
            impl = new DLProxyImpl(DLProxyFragmentActivity.this);
        }
        return impl.getTheme() == null ? super.getTheme() : impl.getTheme();
    }

    @Override
    public ClassLoader getClassLoader() {
        if (impl == null) {
            impl = new DLProxyImpl(DLProxyFragmentActivity.this);
        }
        return impl.getClassLoader();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (mRemoteActivity != null) {
            mRemoteActivity.onActivityResult(requestCode, resultCode, data);
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override
    protected void onStart() {
        if (mRemoteActivity != null) {
            mRemoteActivity.onStart();
        }
        super.onStart();
    }

    @Override
    protected void onRestart() {
        if (mRemoteActivity != null) {
            mRemoteActivity.onRestart();
        }
        super.onRestart();
    }

    @Override
    protected void onResume() {
        if (mRemoteActivity != null) {
            mRemoteActivity.onResume();
        }
        super.onResume();
    }

    @Override
    protected void onPause() {
        if (mRemoteActivity != null) {
            mRemoteActivity.onPause();
        }
        super.onPause();
    }

    @Override
    protected void onStop() {
        if (mRemoteActivity != null) {
            mRemoteActivity.onStop();
        }
        super.onStop();
    }

    @Override
    protected void onDestroy() {
        if (mRemoteActivity != null) {
            mRemoteActivity.onDestroy();
        }
        super.onDestroy();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        if (mRemoteActivity != null) {
            mRemoteActivity.onSaveInstanceState(outState);
        }
        super.onSaveInstanceState(outState);
    }

    @Override
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        if (mRemoteActivity != null) {
            mRemoteActivity.onRestoreInstanceState(savedInstanceState);
        }
        super.onRestoreInstanceState(savedInstanceState);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        if (mRemoteActivity != null) {
            mRemoteActivity.onNewIntent(intent);
        }
        super.onNewIntent(intent);
    }

    // @Override
    // public void onBackPressed() {
    // mRemoteActivity.onBackPressed();
    // super.onBackPressed();
    // }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        boolean r = super.onTouchEvent(event);
        if (mRemoteActivity != null) {
            return mRemoteActivity.onTouchEvent(event);
        }
        return r;
    }

//	@Override
//	public boolean onKeyDown(int keyCode, KeyEvent event) {
//		// super.onKeyDown(keyCode, event);
//		// 
////		if (keyCode == KeyEvent.KEYCODE_BACK/*||keyCode==67*/) {
////			Dialog localBuilder = new AlertDialog.Builder(this).setTitle("提示:").setMessage("确定退出应用吗？").setPositiveButton("确定", new OnClickListener() {
////
////				@Override
////				public void onClick(DialogInterface dialog, int which) {
////
////					stopService(new Intent(DLProxyFragmentActivity.this, DLProxyService.class));
////					DLProxyFragmentActivity.this.finish();
////					//System.exit(0);
////
////				}
////			}).setNegativeButton("取消", new OnClickListener() {
////
////				@Override
////				public void onClick(DialogInterface dialog, int which) {
////					dialog.dismiss();
////
////				}
////			}).create();
////			localBuilder.show();
//////			String build=Build.MANUFACTURER.toLowerCase();
////			// 取消dialog的焦点
//////			if (build.equals("sunmi")){
//////				((AlertDialog) localBuilder).getButton(DialogInterface.BUTTON_POSITIVE).setFocusable(false);
//////				((AlertDialog) localBuilder).getButton(DialogInterface.BUTTON_NEGATIVE).setFocusable(false);
//////			}
////			return true;
////		}
//
//		return mRemoteActivity.onKeyDown(keyCode, event);
//	}

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        boolean r = super.onKeyDown(keyCode, event);
        if (mRemoteActivity != null) {
            return mRemoteActivity.onKeyDown(keyCode, event);
        }
        return r;
    }

    @Override
    public void onWindowAttributesChanged(LayoutParams params) {
        if (mRemoteActivity != null) {
            mRemoteActivity.onWindowAttributesChanged(params);
        }
        super.onWindowAttributesChanged(params);
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        if (mRemoteActivity != null) {
            mRemoteActivity.onWindowFocusChanged(hasFocus);
        }
        super.onWindowFocusChanged(hasFocus);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        if (mRemoteActivity != null) {
            mRemoteActivity.onCreateOptionsMenu(menu);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (mRemoteActivity != null) {
            mRemoteActivity.onOptionsItemSelected(item);
        }
        return super.onOptionsItemSelected(item);
    }

}
