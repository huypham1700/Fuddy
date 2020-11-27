package com.example.fuddy.activities;

import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelProviders;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.example.fuddy.R;
import com.example.fuddy.viewmodel.UserViewModel;

public class LoginActivity extends AppCompatActivity implements IActivity {

    private TextView textView5;
    private EditText txtEmail;
    private EditText txtPassword;
    private LinearLayout btnLogin;
    private UserViewModel userViewModel;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        mappingUI();
        setupAction();
    }

    @Override
    public void mappingUI() {
        textView5 = findViewById(R.id.textView5);
        txtEmail = findViewById(R.id.txtLoginEmail);
        txtPassword = findViewById(R.id.txtLoginPassword);
        btnLogin = findViewById(R.id.btnLogin);
        userViewModel = new UserViewModel();
    }

    @Override
    public void setupAction() {
//        textView5.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                new Handler().postDelayed(new Runnable() {
//                    @Override
//                    public void run() {
//                        startActivity(new Intent(LoginActivity.this, SignUpActivity.class));
//                        finish();
//                    }
//                }, 6000);
//            }
//        });
        userViewModel.init();
        if(userViewModel.getLoginResult().equals("success")){
            Intent intent = new Intent(LoginActivity.this,SignUpActivity.class);
            this.startActivity(intent);
        }
    }
}