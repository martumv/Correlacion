/*
Ejercicio elaborado por Martha Daniela Maldonado que analiza la correlación de 2 variables: Sonrisas vs. Horas que pasé haciendo lo que me gusta
*/


PFont font, fontS, fontXS;
String mes[]={"Septiembre - 2014", "Octubre - 2014", "Noviembre - 2014", "Diciembre - 2014","Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto"};

//Valores de las variables en cada mes
int sonrisas[] ={100,125,25,25,100,125,250,200,100,75,50,500};
int horasGusto[] ={30,25,20,60,50,50,40,60,40,70,80,100};

void setup(){
 size(800,670);
 
 //Declaración de la fuente en distintos tamaños
 font=loadFont("inglobal-20.vlw");
 fontS=loadFont("inglobal-15.vlw");
 fontXS=loadFont("inglobal-10.vlw");

 //Suavizado de la fuente en la previsualización
 smooth(5);
}

void draw(){

  //Fondo amarillo
  background(255,211,52);
  //Fuente del título
  textFont(font,20);
  //Título
  text("Veces que Sonreí (1:100) vs. Horas haciendo lo que me gusta(1:1)", 140,40);


  for(int i=0;i<mes.length;i++){
    //Fuente de los meses y el valor de las sonrisas 
    textFont(fontS,15);
    fill(255,255,255);
    //Nombre de los Meses
    text(mes[i], 50,100+(50*i));
    //Valor de las sonrisas por mes
    text(sonrisas[i], 260 + sonrisas[i],(50*i)-20+110);
    // Barras que simbolizan este valor
    fill(0);
    rect(250,105+(50*i)-20, sonrisas[i],5); 
    
    //Fuente del valor de las horas que paso haciendo lo que me gusta
    textFont(fontXS,10);
    //Valor de las horas
    text(horasGusto[i], 258 + horasGusto[i],(50*i)-20+120);
    //Barras que indican el valor de las horas
    fill(0);
    rect(250,105+(50*i)-10, horasGusto[i],1); 
  }
}