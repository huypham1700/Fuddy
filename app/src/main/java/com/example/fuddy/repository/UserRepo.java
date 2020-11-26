package com.example.fuddy.repository;


import com.example.fuddy.entity.User;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class UserRepo {
    private  FuddyService fuddyService;
    private String result;
    public UserRepo(){
        result= "";
        fuddyService= RetrofitInstance.getInstance().create(FuddyService.class);
    }

    public void login(String email, String password){
        fuddyService.login(email,password)
                .enqueue(new Callback<User>() {
                    @Override
                    public void onResponse(Call<User> call, Response<User> response) {
                        if (response.message().equals("success")){
                            result="success";
                        }else{
                            result="failed";
                        }
                    }

                    @Override
                    public void onFailure(Call<User> call, Throwable t) {
                        result="failed";
                    }
                });
    }
    public String getLoginResult(){return result;}
}
