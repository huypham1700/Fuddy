package com.example.fuddy.entity;

import androidx.room.Entity;
import androidx.room.PrimaryKey;

import org.json.JSONException;
import org.json.JSONObject;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;

@Entity
@Data
@Getter
@Builder
public class Food {
    @PrimaryKey
    @Builder.Default
    private int id =0;
    @Builder.Default
    private int shopId=0;
    @Builder.Default
    private String name ="";
    @Builder.Default
    private String address="";
    @Builder.Default
    private String category ="";
    @Builder.Default
    private double price=0;
    @Builder.Default
    private String description="";
    @Builder.Default
    private int imageId=0;

    public Food(int id, int shopId, String name, String address, String category, double price, String description, int imageId) {
        this.id = id;
        this.shopId = shopId;
        this.name = name;
        this.address = address;
        this.category = category;
        this.price = price;
        this.description = description;
        this.imageId = imageId;
    }

    public Food createFoodFromJson(JSONObject jsonObject){
        try{
            return Food.builder()
                    .id(jsonObject.getInt("id"))
                    .shopId(jsonObject.getInt("shopId"))
                    .name(jsonObject.getString("name"))
                    .address(jsonObject.getString("address"))
                    .category(jsonObject.getString("category"))
                    .price(jsonObject.getDouble("price"))
                    .description(jsonObject.getString("description"))
                    .imageId(jsonObject.getInt("imageId"))
                    .build();
        }catch (JSONException e){
            return null;
        }
    }
}
