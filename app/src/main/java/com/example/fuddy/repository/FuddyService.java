package com.example.fuddy.repository;

import com.example.fuddy.entity.User;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface FuddyService {
    @FormUrlEncoded
    @POST("/users/login")
    Call<User> login(
            @Field("email") String email,
            @Field("password") String password);

}
