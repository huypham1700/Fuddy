package com.example.fuddy.entity;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;

@Data
@Getter
@Builder
public class Food implements Serializable {
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
    private String imageUrl="";

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
                    .imageUrl(jsonObject.getString("imageUrl"))
                    .build();
        }catch (JSONException e){
            return null;
        }
    }
}
