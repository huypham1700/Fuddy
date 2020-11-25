package com.example.fuddy.entity;

import androidx.room.Entity;
import androidx.room.PrimaryKey;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
@Builder
@Getter
@Data
@Entity
public class User implements Serializable {
    @PrimaryKey
    @Builder.Default
    private int id=0;
    @Builder.Default
    private String username ="";
    @Builder.Default
    private String password = "";
    @Builder.Default
    private String name ="";
    @Builder.Default
    private String imageUrl = "";
    @Builder.Default
    private String phoneNumber ="";
    @Builder.Default
    private String tokenKey="";
    @Builder.Default
    private String expiredDate="";
    @Builder.Default
    private String userType="App login";

    public User(int id, String username, String password, String name, String imageUrl, String phoneNumber, String tokenKey, String expiredDate, String userType) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.imageUrl = imageUrl;
        this.phoneNumber = phoneNumber;
        this.tokenKey = tokenKey;
        this.expiredDate = expiredDate;
        this.userType = userType;
    }
    public User createUserFromJson(JSONObject JSONUser){
        try{
            return User.builder()
                    .id(JSONUser.getInt("id"))
                    .username(JSONUser.getString("username"))
                    .password(JSONUser.getString("password"))
                    .name(JSONUser.getString("name"))
                    .imageUrl(JSONUser.getString("imageUrl"))
                    .phoneNumber(JSONUser.getString("phoneNumber"))
                    .tokenKey(JSONUser.getString("tokenKey"))
                    .expiredDate(JSONUser.getString("expiredDate"))
                    .userType(JSONUser.getString("userType"))
                    .build();
        }catch (JSONException e){
            return null;
        }
    }
}
