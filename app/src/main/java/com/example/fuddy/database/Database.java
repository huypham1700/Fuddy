package com.example.fuddy.database;

import android.content.Context;

import androidx.room.Room;
import androidx.room.RoomDatabase;

import com.example.fuddy.database.dao.FoodDAO;
import com.example.fuddy.database.dao.UserDAO;
import com.example.fuddy.entity.Food;
import com.example.fuddy.entity.User;

@androidx.room.Database(entities = {User.class, Food.class},version = 1)
public abstract class Database extends RoomDatabase {
    private static final String DB_NAME = "Fuddy";
    private static Database instance;

    public static synchronized Database getInstance(Context context){
        if(instance==null){
            instance = Room.databaseBuilder(context.getApplicationContext(),Database.class  ,DB_NAME)
                    .allowMainThreadQueries().build();
        }
        return instance;
    }
    public abstract UserDAO userDAO();
    public abstract FoodDAO foodDAO();

}
