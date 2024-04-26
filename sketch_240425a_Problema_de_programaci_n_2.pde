String nombreSala = "Sala de Arte Contemporáneo";
String nombreExpo = "Exposición: Sueños Urbanos";
String nombreArtista = "Artista: Camila Díaz Pavón";
String fechaExpo = "Fecha: 10 - 29 de Septiembre, 2024";
float xTexto = -500; // Posición inicial del texto fuera de la pantalla
PImage quiosco; // Variable para la imagen

void setup() {
  fullScreen(); // Tamaño de pantalla completa
  textAlign(CENTER, CENTER);
  quiosco = loadImage("data/imagen quiosco.png"); // Cargar la imagen del quiosco
}

void draw() {
  background(173,37,168); // Color representativo de Lerma
  
  // Círculo azul
  fill(78, 120, 245); // Color azul
  noStroke();
  ellipse(width/2, height/2, 500, 500); // Círculo en el centro
  
  // Texto
  fill(229,126,43); // Color naranja
  textSize(64);
  text(nombreSala, xTexto, height/2); // Texto moviéndose de izquierda a derecha
  xTexto += 1; // Velocidad de movimiento del texto
  
  // Límite de la pantalla para el texto
  if (xTexto > width + 500) {
    xTexto = -500; // Reiniciar la posición del texto
  }
  
  // Imagen del quiosco
  image(quiosco, width - quiosco.width - 20, 20); // Imagen en la esquina superior derecha
  
  // Información de la exposición
  textSize(24);
  fill(255);
  textAlign(RIGHT);
  text(nombreExpo, width - 20, height - 150); // Nombre de la exposición
  text(nombreArtista, width - 20, height - 100); // Nombre del artista
  text(fechaExpo, width - 20, height - 50); // Fecha de la exposición
}
