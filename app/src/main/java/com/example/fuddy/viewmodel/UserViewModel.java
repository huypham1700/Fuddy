package com.example.fuddy.viewmodel;

import android.app.Application;

import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModel;

import com.example.fuddy.repository.UserRepo;

public class UserViewModel extends ViewModel {
    private UserRepo userRepo;
    private String loginResult;

    public void init(){
        userRepo = new UserRepo();
        loginResult=userRepo.getLoginResult();
    }
    public void login(String email, String password){
        userRepo.login(email,password);
    }
    public String getLoginResult(){return loginResult;}
}
