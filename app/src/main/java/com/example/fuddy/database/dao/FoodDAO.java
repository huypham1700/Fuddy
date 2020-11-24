package com.example.fuddy.database.dao;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;

import com.example.fuddy.entity.Food;

import java.util.List;

@Dao
public interface FoodDAO {
    @Query("SELECT * FROM Food")
    List<Food> getAllFood();
    @Query("SELECT * FROM Food WHERE id=:id")
    Food getFoodById(int id);
    @Insert
    void insertFood(Food food);
    @Query("DELETE FROM Food")
    void deleteAllFood();
    
}
