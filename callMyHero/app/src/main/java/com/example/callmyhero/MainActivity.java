package com.example.callmyhero;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
//import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void fightBtn(View view){
        Intent intent = new Intent(this, fight.class);
        startActivity(intent);
    }
//
    public void robberyBtn(View view){
        Intent robbery = new Intent(MainActivity.this, robbery.class);
        startActivity(robbery);
    }

    public void terrorismBtn(View view){
        Intent terrorism = new Intent(MainActivity.this, terrorism.class);
        startActivity(terrorism);
    }

    public void disasterBtn(View view){
        Intent intent = new Intent(MainActivity.this, disaster.class);
        startActivity(intent);
    }
}