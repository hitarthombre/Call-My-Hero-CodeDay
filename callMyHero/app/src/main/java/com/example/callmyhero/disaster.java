package com.example.callmyhero;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;

import androidx.appcompat.app.AppCompatActivity;

public class disaster extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_disaster);
    }
    public void btnBack(View view){
        onBackPressed();
    }

    public void toLocation31(View view)
    {
        Uri uri = Uri.parse("https://goo.gl/maps/BrASeYmjn5iJxsJX7");
        startActivity(new Intent(Intent.ACTION_VIEW, uri));
    }
    public void toLocation32(View view)
    {
        Uri uri = Uri.parse("https://goo.gl/maps/8FfvasxLnVJDYKna7");
        startActivity(new Intent(Intent.ACTION_VIEW, uri));
    }
    public void toLocation33(View view)
    {
        Uri uri = Uri.parse("https://goo.gl/maps/HNwxCCHQd2Bg6stT8");
        startActivity(new Intent(Intent.ACTION_VIEW, uri));
    }
    public void toLocation34(View view)
    {
        Uri uri = Uri.parse("https://goo.gl/maps/92aeDB7iGn3Cs6wF6");
        startActivity(new Intent(Intent.ACTION_VIEW, uri));
    }
}