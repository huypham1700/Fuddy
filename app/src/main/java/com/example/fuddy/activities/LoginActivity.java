package com.example.fuddy.activities;

import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.example.fuddy.R;
import com.example.fuddy.viewmodel.UserViewModel;

public class LoginActivity extends AppCompatActivity implements IActivity {

    private TextView textView5;
    private EditText edtSigninEmail;
    private EditText edtSigninPassword;
    private LinearLayout llSignin;
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
        textView5 = findViewById(R.id.txtSignUpAccount);
        edtSigninEmail = findViewById(R.id.edtSigninEmail);
        edtSigninPassword = findViewById(R.id.edtSigninPassword);
        llSignin= findViewById(R.id.llSignIn);
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