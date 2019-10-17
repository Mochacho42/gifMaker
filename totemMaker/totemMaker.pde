void setup()
{
  size(400, 500);
}

void draw()
{
  String jour = "samedi"; // jour de naissance
  int heure = 2200;
  String name = "askeza";
  int size = 166;
  int famille = 2;
  int departement = 75;
  int pointure = 43;
  
  // définition couleur backgroung
  if (size < 160)
    background(size, 255-size, size+80);
  else if (size >= 160 && size <170)
    background(heure/10, 255-heure/10, heure/18);
  else 
    background(size-100, size, heure/9);
  
  // formes visage
  if (name.length() < 6)
  {
    beginShape();
    vertex(200, 100);
    vertex(350, 175);
    vertex(350, 300);
    vertex(200, 400);
    vertex(50, 300);
    vertex(50, 175);
    endShape(CLOSE);
  }
  else if (name.length() >= 6 && name.length() <= 7)
    ellipse(200, 250, 250, 250);
  else
  {
    rectMode(CENTER);
    rect(200, 250, 250, 250);
  }
  
  // couleur visage
    
  // yeux + nez
  
  
  // bouches
  
  // accessoires
}
