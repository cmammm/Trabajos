void setup() {
  size(600, 600); // Tamaño del lienzo
  background(133, 148, 250); // Background de color azul
  
  // Color de las figuras
  fill(155, 225, 119); 
  stroke(255, 135, 120);
  
  // Círculo en el centro
  ellipse(width/2, height/2, 200, 200); 
  
  // Cuadrado en una esquina
  rect(50, 50, 100, 100); 
  
  // Línea diagonal
  line(0, 0, width, height); 
  
  // Texto en la parte inferior
  fill(255); // Color del texto
  textSize(20); // Tamaño del texto
  textAlign(CENTER);
  text("Necesito ir a TDS3, y lo estoy manifestando con esto", width/2, height - 30); 
}

void draw() {
  // No se necesitan animaciones, todo está en setup()
}
