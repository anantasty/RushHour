package com.qrcode.token;


import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class ScanScreen extends Activity {
	
	Button scan;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.scan_scrfeen);
		
		scan = (Button)findViewById(R.id.button1);
		
		scan.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
			
				try {
					Intent intent = new Intent("com.google.zxing.client.android.SCAN");
					intent.putExtra("SCAN_MODE", "QR_CODE_MODE");
					startActivityForResult(intent, 0);
				} catch (ActivityNotFoundException anfe) {
					Log.e("onCreate", "Scanner Not Found", anfe);
				}
				
			}
		});
	}
	
	public void history_tab(View v) {
		Intent move = new Intent(this,History.class);
		startActivity(move);
		finish();
		Toast.makeText(getApplicationContext(), "History screen", Toast.LENGTH_SHORT).show();
	}
	
	public void scan_tab(View v) {
		/*Intent move = new Intent(this,ScanScreen.class);
		startActivity(move);
		Toast.makeText(getApplicationContext(), "Scan Screen", Toast.LENGTH_SHORT).show();*/
	}
	
	public void onActivityResult(int requestCode, int resultCode, Intent intent) {
        if (requestCode == 0) {
            if (resultCode == RESULT_OK) {
                String contents = intent.getStringExtra("SCAN_RESULT");
                String format = intent.getStringExtra("SCAN_RESULT_FORMAT");
                // Handle successful scan
                Log.e("SCANNED URL",contents);
                Toast.makeText(getApplicationContext(), "Scanned Content: "+contents , Toast.LENGTH_LONG).show();
                
             
            } else if (resultCode == RESULT_CANCELED) {
                // Handle cancel
                Toast.makeText(getApplicationContext(), "Scanning was Cancelled!", Toast.LENGTH_SHORT).show();
            }
        }
    }
}
