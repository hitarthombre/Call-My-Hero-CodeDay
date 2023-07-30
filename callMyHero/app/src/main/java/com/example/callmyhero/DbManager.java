package com.example.callmyhero;

import android.content.ContentValues;
import android.content.Context;
import android.database.ContentObservable;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import androidx.annotation.Nullable;

public class DbManager extends SQLiteOpenHelper
{
    private static final String dbname="student_test.db";
    private static final String TABLENAME = "tbl_info";

    public DbManager(@Nullable Context context, @Nullable String name, @Nullable SQLiteDatabase.CursorFactory factory, int version) {
        super(context, name, factory, version);
    }

//    public DbManager(@Nullable Context context) {
//        super(context, name, factory, version);
//    }

//    public DbManager(Context context, String name, String factory, String version ) {
//        super(context, name, factory, version);
//    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        String qry="create table "+ TABLENAME+ "(id integer primary key autoincrement, name text, email text, mobile text)";
        db.execSQL(qry);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

    }

//    @Override
//    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
//        db.execSQL("DROP TABLE IF " + TABLENAME);
//        onCreate(db);
//    }

    public String addRecord(String p1, String p2, String p3)
    {
        SQLiteDatabase db=this.getWritableDatabase();
        ContentValues cv = new ContentValues();
        cv.put("name", p1);
        cv.put("email", p2);
        cv.put("courses", p3);

        long res=db.insert("tbl_student", null, cv);

        if(res==-1)
            return "Failed";
        else
            return  "Successfully Inserted";

    }

    public Cursor getdata(String mobile)
    {
        SQLiteDatabase db = this.getWritableDatabase();
        String qry="select * from " + TABLENAME + "where mobile=" +mobile;
        Cursor crs=db.rawQuery(qry, null);
        return crs;
    }

}
