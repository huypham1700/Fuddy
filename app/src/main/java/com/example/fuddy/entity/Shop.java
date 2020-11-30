package com.example.fuddy.entity;

import androidx.room.Entity;
import androidx.room.PrimaryKey;

import java.io.Serializable;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;

@Data
@Getter
@Builder
public class Shop implements Serializable {
    @Builder.Default
    private int id = 1;
    @Builder.Default
    private String name = "";
    @Builder.Default
    private String address = "";
    @Builder.Default
    private float rating = 0;
    @Builder.Default
    private String phoneNumber = "";
    @Builder.Default
    private String imageUrl = "";
    @Builder.Default
    private String description = "";

}
