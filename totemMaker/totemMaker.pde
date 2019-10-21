import controlP5.*;

ControlP5 cp5;


String birthday, birthtime, name, size, familymember, department, shoesize;


void setup()
{
  size(700, 700);
  
  cp5 = new ControlP5(this);
  
  cp5.addTextfield("name").setPosition(0,0).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("birthday").setPosition(0,40).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("birthtime").setPosition(0,80).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("size").setPosition(0,120).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("familymember").setPosition(0,160).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("department").setPosition(0,200).setSize(100,20).setAutoClear(false);
  cp5.addTextfield("shoesize").setPosition(0,240).setSize(100,20).setAutoClear(false);
  
  
  cp5.addBang("Submit").setPosition(0, 280).setSize(100, 25);
 
}

void draw()
{
  
   background(150);
  
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



void Submit() {
  println();
  birthday=cp5.get(Textfield.class, "name").getText();
  name=cp5.get(Textfield.class, "birthday").getText();
  birthtime=cp5.get(Textfield.class, "birthtime").getText();
  size=cp5.get(Textfield.class, "size").getText();
  familymember=cp5.get(Textfield.class, "familymember").getText();
  department=cp5.get(Textfield.class, "department").getText();
  shoesize=cp5.get(Textfield.class, "shoesize").getText();
  
  print(name + "\n" + birthday + "\n" + birthtime + "\n" + size + "\n" + familymember + "\n" + department + "\n" + shoesize);

}
