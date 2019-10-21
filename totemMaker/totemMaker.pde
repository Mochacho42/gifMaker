void setup()
{
  size(400, 500);
}

void draw()
{
  String birthday, birthtime, name, size, familymember, department, shoesize;
  
  //convert birthtime, size, familymember, department, shoesize;
  
  // définition couleur backgroung
  if (size < 160)
    background(size, 255-size, size+80);
  else if (size >= 160 && size <170)
    background(heure/10, 255-birthtime/10, birthtime/18);
  else 
    background(size-100, size, birthtime/9);
  
  // couleur visage
  if (department <= 20 && shoesize < 40)
   fill(85, 0, 0);
  else if (department <= 20 && shoesize >= 40)
    fill(128, 21, 21);
  else if (department > 20 && department <= 40 && shoesize < 40)
    fill(255, 116, 1);
  else if (department > 20 && department <= 40 && shoesize >= 40)
    fill(235, 128, 40);
  else if (department > 40 && department <= 60 && shoesize < 40)
    fill(153, 26, 153);
  else if (department > 40 && department <= 60 && shoesize >= 40)
    fill(213, 1, 213);
  else if (department > 60 && department <= 74 && shoesize < 40)
    fill(19, 3, 45);
  else if (department > 60 && department <= 74 && shoesize >= 40)
    fill(41, 16, 80);
  else if (department > 74 && department <= 96 && shoesize < 40)
    fill(6, 98, 194);
  else if (department > 74 && department <= 96 && shoesize >= 40)
    fill(43, 76, 111);
  else if (department >= 971 && shoesize > 40)
    fill(86, 198, 13);
  else if (department >= 971 && shoesize <=  40)
    fill(76, 100, 61);
    
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
  
  // nez
  if (familymember <= 2)
  {
    rectMode(CENTER);
    rect(200, 250, 20, 50);
  }
  else if (familymember == 3 || familymember == 4)
    ellipse(200, 250, 50, 30);
  else if (familymember == 5)
    triangle(200, 285, 180, 250, 220, 250);
  else
  {
    rectMode(CENTER);
    rect(200, 250, 40, 28);
  }
    
  // yeux gauche et droite
  if (department <=15)
  {
    fill(0);
    ellipse(150, 220, 60, 60);
    
    fill(0);
    ellipse(250, 220, 60, 60);
  }
  else if (department <= 30)
    {
    fill(0);
    ellipse(150, 220, 60, 60);
    
    fill(0);
    ellipse(250, 220, 60, 60);
  }
  else if (department <= 45)
  {
    fill(0);
    ellipse(150, 220, 60, 60);
    
    fill(0);
    ellipse(250, 220, 60, 60);
  }
  else if (department <= 74)
  {
    fill(0);
    ellipse(150, 220, 60, 60);
    
    fill(0);
    ellipse(250, 220, 60, 60);
  }  
  else if (department <= 95)
  {
    fill(0);
    ellipse(150, 220, 60, 60);
    
    fill(0);
    ellipse(250, 220, 60, 60);
  }  
  else if (department >= 971 && department < 977)
  {
    fill(0);
    ellipse(150, 220, 60, 60);
    
    fill(0);
    ellipse(250, 220, 60, 60);
  }  
  
  // bouches
  
  
  // accessoires
}
