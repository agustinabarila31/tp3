//Animación Shrek

String estado;

//Declaración de imágenes

PImage introduccion, comienzo, ogros, taberna, shrekogro, shrekhumano, pantano, fionahumana; 
PImage primerfinal, segundofinal, tercerfinal, finalfeliz, cuartofinal, creditos;


void setup(){
  
size ( 600, 400 );
estado = "introduccion"; 

//Carga de imágenes
introduccion = loadImage( "introduccion.jpeg" );
comienzo = loadImage( "comienzo.jpeg" );
ogros = loadImage( "ogros.jpeg" );
taberna = loadImage( "taberna.jpeg" );
shrekogro = loadImage( "shrekogro.jpeg" );
shrekhumano = loadImage( "shrekhumano.jpeg" );
pantano = loadImage( "pantano.jpeg" );
fionahumana = loadImage( "fionahumana.jpeg" );
primerfinal = loadImage( "primerfinal.jpeg" );
segundofinal = loadImage( "segundofinal.jpeg" );
tercerfinal = loadImage( "tercerfinal.jpeg" );
finalfeliz = loadImage( "finalfeliz.jpeg" );
cuartofinal = loadImage( "cuartofinal.jpeg" );
creditos = loadImage( "creditos.jpg" );

noStroke();
textSize( 28 );
textAlign( CENTER, CENTER );
}


void draw(){
  //Ciclo if
  if( estado.equals("introduccion") ){
    image( introduccion, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("comienzo") ){
    image( comienzo, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("ogros") ){
    image( ogros, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("taberna") ){
    image( taberna, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("shrekogro") ){
    image( shrekogro, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("shrekhumano") ){
    image( shrekhumano, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("pantano") ){
    image( pantano, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("fionahumana") ){
    image( fionahumana, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("primerfinal") ){
    image( primerfinal, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("segundofinal") ){
    image( segundofinal, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("tercerfinal") ){
    image( tercerfinal, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("finalfeliz") ){
    image( finalfeliz, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("cuartofinal") ){
    image( cuartofinal, 0, 0, 600, 400 );
    
    
  }else if ( estado.equals("creditos") ){ 
    image( creditos, 0, 0, 600, 400 );
    fill( 255 );
    text( "Agustina Barila, Legajo 85073/1", width/2, 330 );
    
  }
  
}

void keyPressed(){
  //CAMBIO de ESTADO: "introduccion" -> "comienzo"
  //CUANDO: presiono la barra espaciadora
  if( key == ' ' ) {
    estado = "comienzo";
    
  }
    
  //CAMBIO de ESTADO: "ogros" -> ""pantano"
  //CUANDO: presiono la barra espaciadora
  if( key == ' ' ) {
    estado = "pantano";
    
  }
    
  //CAMBIO de ESTADO: "shrekogro" -> "pantano"
  //CUANDO: presiono la barra espaciadora
  if( key == ' ' ) {
  estado = "pantano"; 
    
  }
  
  //CAMBIO de ESTADO: "shrekhumano" -> "fionahumana"
  //CUANDO: presiono la barra espaciadora
  if( key == ' ' ) {
  estado = "fionahumana"; 
  
  }
  
  //CAMBIO de ESTADO: "tercerfinal" -> "finalfeliz"
  //CUANDO: presiono la barra espaciadora
  if( key == ' ' ) {
  estado = "finalfeliz";
  
  }
  
  //CAMBIO de ESTADO: "creditos" -> "introduccion"
  //CUANDO: presiono la barra espaciadora
  if( key == ' ' ) {
  estado = "creditos";
  
  } 
  
  //Si estoy en alguna pantalla de final
  if( estado.equals("primerfinal") || estado.equals("segundofinal") || estado.equals("finalfeliz") || estado.equals("cuartofinal") ){
    //CUANDO: presiono la tecla blackspace
   if( keyCode == BACKSPACE ){
     estado = "introduccion";
   }
  }
  

void mousePressed(){
  //CUANDO: hago clic sobre ZONA IZQUIERDA de la imagen de COMIENZO
  if( mouseX > 70 && mouseX < 150 && mouseY > 300 && mouseY < 370 )
  //CAMBIO de ESTADO: "comienzo" -> "ogros"
  estado = "ogros";
  
  
  //CUANDO: hago clic sobre ZONA DERECHA de la imagen de COMIENZO
  if( mouseX > 500 && mouseX < 400 && mouseY > 300 && mouseY < 370 )
  //CAMBIO de ESTADO: "comienzo" -> "taberna"
  estado = "taberna";
  
  
  //CUANDO: hago clic sobre ZONA IZQUIERDA de la imagen de TABERNA
  if( mouseX > 70 && mouseX < 150 && mouseY > 300 && mouseY < 370 )
  //CAMBIO de ESTADO: "taberna" -> "shrekogro"
  estado = "shrekogro";
  
  
  //CUANDO: hago clic sobre ZONA DERECHA de la imagen de TABERNA
  if( mouseX > 500 && mouseX < 400 && mouseY > 300 && mouseY < 370 )
  //CAMBIO de ESTADO: "taberna" -> "shrekhumano"
  estado = "shrekhumano";
  
  
  //CUANDO: hago clic sobre ZONA IZQUIERDA de la imagen de FIONAHUMANA
  if( mouseX > 70 && mouseX < 150 && mouseY > 300 && mouseY < 370 )
  //CAMBIO de ESTADO: "fionahumana" -> "tercerfinal"
  estado = "tercerfinal";
  
  
  //CUANDO: hago clic sobre ZONA DERECHA de la imagen de FIONAHUMANA
  if( mouseX > 500 && mouseX < 400 && mouseY > 300 && mouseY < 370 )
  //CAMBIO de ESTADO: "fionahumana" -> "cuartofinal"
  estado = "cuartofinal";
  
  
  //CUANDO: hago clic sobre ZONA IZQUIERDA de la imagen de PANTANO
  if( mouseX > 70 && mouseX < 150 && mouseY > 300 && mouseY < 370 )
  //CAMBIO de ESTADO: "pantano" -> "primerfinal"
  estado = "primerfinal";
  
  
  //CUANDO: hago clic sobre ZONA DERECHA de la imagen de PANTANO
  if( mouseX > 500 && mouseX < 400 && mouseY > 300 && mouseY < 370 )
  //CAMBIO de ESTADO: "pantano" -> "segundofinal"
  estado = "segundofinal";
  
}
