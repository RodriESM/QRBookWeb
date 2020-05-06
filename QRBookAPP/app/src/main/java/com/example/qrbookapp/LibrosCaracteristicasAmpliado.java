package com.example.qrbookapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class LibrosCaracteristicasAmpliado extends AppCompatActivity {

    TextView tvTituloAmpliado,tvAutorAmpliado,tvEditorialAmpliado,tvAnioAmpliado,tvSinopsisAmpliado;
    ImageView imgLibroAmpliado;
    Button btnQrs;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_libros_caracteristicas_ampliado);

        tvTituloAmpliado=findViewById(R.id.tvTituloAmpliado);
        tvAutorAmpliado=findViewById(R.id.tvAutorAmpliado);
        tvEditorialAmpliado=findViewById(R.id.tvEditorialAmpliado);
        tvAnioAmpliado=findViewById(R.id.tvAnioAmpliado);
        tvSinopsisAmpliado=findViewById(R.id.tvSinopsisAmpliado);
        imgLibroAmpliado=findViewById(R.id.imgLibroAmpliado);
        btnQrs = findViewById(R.id.btnQrs);

        Libros libroSeleccionadoAnteriormente=(Libros) getIntent().getSerializableExtra("libros");

        tvTituloAmpliado.setText(libroSeleccionadoAnteriormente.getTitulo());
        tvAutorAmpliado.setText(libroSeleccionadoAnteriormente.getAutor());
        tvEditorialAmpliado.setText(libroSeleccionadoAnteriormente.getEditorial());
        tvAnioAmpliado.setText(String.valueOf(libroSeleccionadoAnteriormente.getYear()));
        //TO_DO Aqui iría la imagen pero dado que aun no se como se introducirá la dejo sin introducir
        //imgLibroAmpliado.setImageResource(libroSeleccionadoAnteriormente.);
        tvSinopsisAmpliado.setText(libroSeleccionadoAnteriormente.getSinopsis());

        btnQrs.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent nuevaActividad = new Intent(getApplicationContext(), ListaQr.class);
                //Intent intentPri = new Intent().setClass(SPlashScreeeen.this, MainActivity.class);
                startActivity(nuevaActividad);
            }
        });




    }
}