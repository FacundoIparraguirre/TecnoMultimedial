// Iparraguirre Facundo Rafael 81847/8 - Comision 4b - Profesor Tobías Albirosa

PFont fuente;// fuente
PImage fondo1;// imagenes
PImage fondo2;
int pantalla =  0 ;// variables
int transparencia ;

 void setup () {
     size ( 600 , 600);
     // fuente
     fuente =  createFont ("MonsterInc.ttf",40);
     textFont(fuente);
     // Imagen
     fondo1 =  loadImage( "portada.jpg" );
     fondo2 =  loadImage( "zona.jpeg" );
     // otros
     transparencia = ( 255 );
}
 void draw (){
  background (95,123,255);
  image (fondo1, 0 , 0 , 600 , 600 );
  fill ( 255 , transparencia);
  if (pantalla < 6 ){
  transparencia -- ;
  }
  textAlign (CENTER);
  
  if (pantalla == 0 ){
    textSize ( 60 );
    text ( " Monster Inc " , width/2,height/2);
 
  
  } else  if (pantalla == 1 ){
  textSize ( 40 );
  text ( " Dirigido por " , width/2,height/2);
  textSize ( 40 );
  text ( " Pixar Animation Studios \n Pete Docter , \n Lee Unkrich y David Silverman " , width/2,height/2+40);
  }
  else if (pantalla == 2 ){
   textSize ( 40 );
   text ( " Musica por " , width/2,height/2);
   textSize ( 40 );
   text ( " Billy Crystal y John Goodman y por Randy Newman " , width/2,height/2+40);
  }
  else  if (pantalla == 3 ){
    image (fondo2, 0 , 0 , 500 , 500 );
    textSize ( 40 );
    text ( " Protagonizado por ",width/2,height/2);
    textSize ( 30 );
    text ( " John Goodman - James P. Sullivan \n Billy Crystal - Mike Wazowski \n Mary Gibbs - Boo \n Steve Buscemi - Randall Boggs " ,width/2,height/2+40);
    
  }
   else if (pantalla == 4 ){
   textSize ( 40 );
   text ( " Reparto " , width/2,height/2-80);
   textSize ( 25 );
   text ( " Jennifer Tilly - Celia Mae \n James Coburn - Henry J. Waternoose III " ,width/2,height/2-40);
   textSize ( 30 );
   text ( " Bob Peterson - Roz \n John Ratzenberger - Yeti" ,width/2,height/2);
   textSize ( 30 );
   text ( " Frank Oz - Fungus \n Bonnie Hunt - Mrs. Flint   " ,width/2,height/2+40);
   }
   else if (pantalla == 5 ){

   textSize ( 30 );
   text( " Monsters, Inc. \n\nes una pelicula animada por computadora \nde 2001 y el cuarto largometraje de comedia de amigos ",width/2,height/2-80);
   textSize ( 25 );
   text ( "producido por Pixar Animation Studios .\n Fue dirigida por Pete Docter , \ncodirigida por Lee Unkrich y David Silverman",width/2,height/2-40);
   textSize ( 25 );
   text ( "fue escrita por Jack W. Bunting, Jill Culton,\n Pete Docter, Ralph Eggleston , Dan Gerson , Jeff Pidgeon ,\n Rhett Reese, Jonathan Roberts y Andrew Stanton.",width/2,height/2);
   textSize ( 30 );
   text( "La pelicula fue estrenada en los cines por\n Walt Disney Pictures en los Estados Unidos\n el 2 de noviembre de 2001. Fue un exito comercial y \nde critica, recaudando 562,816,256 de dolares en todo el mundo." , width/2,height/2+40);
   }
   else if (pantalla ==  6 ){
     textSize ( 40 );
     text ("Presiona R para reiniciar",width/2,height/2);
   }
  
  if (transparencia <=  0 ){
  pantalla ++ ;
  transparencia =  255 ;
   }
}
 void  keyPressed () {
   if ( key =='r'){
   pantalla = 0 ;
   transparencia = 255 ;
   }
}
