package com.qrcode.token;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class SplashScreen extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.splash_screen);
	
	}
	
	@Override
	protected void onStart() {
		// TODO Auto-generated method stub
		super.onStart();
		
		
		Thread go=new Thread()
		{
			public void run()
			{
				try
				{
					sleep(2000);
				}
				catch(InterruptedException e)
				{
					e.printStackTrace();
				}
				finally
				{
					
					SplashScreen.this.runOnUiThread(new Runnable() {
						  public void run() {
							  
									Intent mov=new Intent(SplashScreen.this,ScanScreen.class);
									startActivity(mov);
									finish();
						  }
						});
				}
			}
		};
		go.start();
		
	}
}
