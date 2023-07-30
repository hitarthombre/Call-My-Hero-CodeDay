package com.example.callmyhero;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class fight extends AppCompatActivity {

    DbManager obj=null;
    TextView tv;
//    Button location;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fight);
        tv=(TextView)findViewById(R.id.textView12);

//        location.findViewById(R.id.button34);

//        location.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View view) {
//                gotoUrl("https://youtube.com");
//            }
//        });

    }

//    private void gotoUrl(String s) {
//        Uri uri = Uri.parse(s);
//        startActivity(new Intent(Intent.ACTION_VIEW, uri));
//    }
    public void toLocation1(View view)
    {
        Uri uri = Uri.parse("https://goo.gl/maps/BrASeYmjn5iJxsJX7");
        startActivity(new Intent(Intent.ACTION_VIEW, uri));
    }
    public void toLocation2(View view)
    {
        Uri uri = Uri.parse("https://goo.gl/maps/8FfvasxLnVJDYKna7");
        startActivity(new Intent(Intent.ACTION_VIEW, uri));
    }
    public void toLocation3(View view)
    {
        Uri uri = Uri.parse("https://goo.gl/maps/HNwxCCHQd2Bg6stT8");
        startActivity(new Intent(Intent.ACTION_VIEW, uri));
    }
    public void toLocation4(View view)
    {
        Uri uri = Uri.parse("https://goo.gl/maps/92aeDB7iGn3Cs6wF6");
        startActivity(new Intent(Intent.ACTION_VIEW, uri));
    }
    public void btnBack(View view){
        onBackPressed();
    }

//    public void selecters(View view){
//        obj=new DbManager(this);
//        Cursor result = obj.getdata("Help");
//            while (result.moveToNext())
//            {
//                tv.setText(result.getString(1)+" "+ result.getString(2));
//            }
//    }



}