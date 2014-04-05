package com.qrcode.token;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

public class History extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.scan_scrfeen);
		
		
		
	}
	
	public void history_tab(View v) {
		/*Intent move = new Intent(this,History.class);
		startActivity(move);
		Toast.makeText(getApplicationContext(), "History screen", Toast.LENGTH_SHORT).show();*/
	}
	
	public void scan_tab(View v) {
		Intent move = new Intent(this,ScanScreen.class);
		startActivity(move);
		finish();
		Toast.makeText(getApplicationContext(), "Scan Screen", Toast.LENGTH_SHORT).show();
	}
}
