package com.example.fuddy.database.dao;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;

import com.example.fuddy.entity.User;

import java.util.ArrayList;
import java.util.HashMap;

@Dao
public interface UserDAO {
    @Query("SELECT tokenKey, expiredDate FROM User WHERE id = :id")
    HashMap<String,String> getTokenKey(int id);
    @Query("SELECT name, imageId, username,password, phoneNumber FROM User WHERE id =:id")
    HashMap<String, ArrayList<Object>> getUserInfo(int id);
    @Insert
    void insertNewUser(User user);
    @Query("DELETE FROM User")
    void deleteAllUser();
    
}
