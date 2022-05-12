XML

<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="#ED11BBD1"
    android:foregroundTint="#1ADEE4"
    tools:context=".MainActivity">

    <TextView
        android:id="@+id/textView4"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="27dp"
        android:layout_marginBottom="38dp"
        android:background="#00EAFF"
        android:text="login/signin"
        app:layout_constraintBottom_toTopOf="@+id/textView5"
        app:layout_constraintStart_toEndOf="@+id/textView5" />

    <TextView
        android:id="@+id/textView5"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="84dp"
        android:layout_marginTop="156dp"
        android:text="Username"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <EditText
        android:id="@+id/u1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="2dp"
        android:layout_marginTop="4dp"
        android:ems="10"
        android:hint="username"
        android:inputType="textPersonName"
        app:layout_constraintStart_toStartOf="@+id/textView5"
        app:layout_constraintTop_toBottomOf="@+id/textView5" />

    <TextView
        android:id="@+id/textView6"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="4dp"
        android:layout_marginTop="4dp"
        android:text="Password"
        app:layout_constraintStart_toStartOf="@+id/u1"
        app:layout_constraintTop_toBottomOf="@+id/u1" />

    <Button
        android:id="@+id/b1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="9dp"
        android:text="login"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.458"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toBottomOf="@+id/p1" />

    <TextView
        android:id="@+id/u2"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="32dp"
        android:layout_marginEnd="80dp"
        android:hint="username"
        app:layout_constraintEnd_toEndOf="@+id/b1"
        app:layout_constraintTop_toBottomOf="@+id/b1" />

    <TextView
        android:id="@+id/p2"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="1dp"
        android:layout_marginTop="24dp"
        android:hint="password"
        app:layout_constraintStart_toStartOf="@+id/u2"
        app:layout_constraintTop_toBottomOf="@+id/u2" />

    <EditText
        android:id="@+id/p1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="8dp"
        android:ems="10"
        android:hint="password"
        android:inputType="textPassword"
        app:layout_constraintStart_toStartOf="@+id/textView6"
        app:layout_constraintTop_toBottomOf="@+id/textView6" />
</androidx.constraintlayout.widget.ConstraintLayout>

Java 

package com.example.a250322login;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;


public class MainActivity extends AppCompatActivity {
    Button btn;
    EditText e1,e2;
    TextView t1,t2;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btn = findViewById(R.id.b1);
        e1 = findViewById(R.id.u1);
        e2 = findViewById(R.id.p1);
        t1 = findViewById(R.id.u2);
        t2 = findViewById(R.id.p2);
        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                t1.setText("Username is  "+e1.getText().toString());
                 t2.setText("Password is "+e2.getText().toString());
            }
        });
    }

