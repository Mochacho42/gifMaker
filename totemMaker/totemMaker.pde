import controlP5.*;

ControlP5 cp5;


String birthday, month, name, size, familymember, department, shoesize;
int r, g, b;
int lengthname;

void setup()
{
  size(650, 650);
  
  cp5 = new ControlP5(this);
  
  cp5.addTextfield("name").setPosition(0,0).setSize(100,20).setAutoClear(false); //hair
  cp5.addTextfield("birthday").setPosition(0,40).setSize(100,20).setAutoClear(false); //face
  cp5.addTextfield("month").setPosition(0,80).setSize(100,20).setAutoClear(false);  //eyes
//  cp5.addTextfield("size").setPosition(0,120).setSize(100,20).setAutoClear(false);
//  cp5.addTextfield("familymember").setPosition(0,160).setSize(100,20).setAutoClear(false);
//  cp5.addTextfield("department").setPosition(0,200).setSize(100,20).setAutoClear(false);
//  cp5.addTextfield("shoesize").setPosition(0,240).setSize(100,20).setAutoClear(false);
  
  
  cp5.addBang("Submit").setPosition(0, 280).setSize(100, 25);
  

 
}


void Submit() {
  
  name=cp5.get(Textfield.class, "name").getText();
  name = new String(name);
  
  birthday=cp5.get(Textfield.class, "birthday").getText();
  birthday = new String(birthday);
  
  month=cp5.get(Textfield.class, "month").getText();
  month = new String(month);
  /*
  size=cp5.get(Textfield.class, "size").getText();
  familymember=cp5.get(Textfield.class, "familymember").getText();
  department=cp5.get(Textfield.class, "department").getText();
  shoesize=cp5.get(Textfield.class, "shoesize").getText();
  print(name + "\n" + birthday + "\n" + birthtime + "\n" + size + "\n" + familymember + "\n" + department + "\n" + shoesize);
*/
  lengthname = name.length();
}

String[] DaysOfTheWeek = {"monday", "tuesday", "wednesday", "thursday","friday", "saturday", "sunday"};
String[] Months = {"january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"};

void draw()
{

  
  background(150);
  
  //convert month, size, familymember, department, shoesize;
  
//hair

  if(1 <= lengthname && lengthname <= 3) {
    triangle(100, 67, 550, 67, 325, 400);//triangle équilaterale °180
  }
  if(4 <= lengthname && lengthname <= 6) {
    triangle(150, 400, 500, 400, 325, 67);
  }  
  if(7 <= lengthname && lengthname <= 9) {
    rect(200, 50, 250, 300);
  }
  if(10 <= lengthname) {
    rect(150, 138, 350, 250);
  }


// formes visage
  
  if((DaysOfTheWeek[0]).equals(birthday))
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
  if((DaysOfTheWeek[1]).equals(birthday))
  {
    ellipse(325, 325, 433, 433);//cercle
  }
  if((DaysOfTheWeek[2]).equals(birthday))
  {
    ellipse(325, 325, 600, 250);//losange
  }
  if((DaysOfTheWeek[3]).equals(birthday))
  {
    ellipse(325, 325, 250, 600);//losange
  }
  if((DaysOfTheWeek[4]).equals(birthday))
  {
    triangle(100, 491, 550, 491, 325, 158); //triangle équilaterale
  }
  if((DaysOfTheWeek[5]).equals(birthday))
  {
    triangle(100, 158, 550, 158, 325, 491);//triangle équilaterale °180
  }
  if((DaysOfTheWeek[6]).equals(birthday))
  {
    rect(200, 138, 250, 433);//rectangle hauteur>largeur
  }

//eyes
  
  //first type
  if((Months[0]).equals(month)){
    if(DaysOfTheWeek[3].equals(birthday)){
    circle(250, 200, 100);
    circle(250, 200, 5);
    circle(400, 200, 100);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[4].equals(birthday)){
    circle(250, 200, 100);
    circle(250, 200, 5);
    circle(400, 200, 100);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[6].equals(birthday)){
    circle(200, 200, 100);
    circle(200, 200, 5);
    circle(450, 200, 100);
    circle(450, 200, 5);       
    }
    else {
    circle(125, 200, 100);
    circle(125, 200, 5);
    circle(525, 200, 100);
    circle(525, 200, 5);      
    }    
  }
  if((Months[1]).equals(month)){
    if(DaysOfTheWeek[3].equals(birthday)){
    circle(250, 200, 100);
    circle(250, 200, 5);
    circle(400, 200, 100);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[4].equals(birthday)){
    circle(250, 200, 100);
    circle(250, 200, 5);
    circle(400, 200, 100);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[6].equals(birthday)){
    circle(200, 200, 100);
    circle(200, 200, 5);
    circle(450, 200, 100);
    circle(450, 200, 5);       
    }
    else {
    circle(125, 200, 100);
    circle(125, 200, 5);
    circle(525, 200, 100);
    circle(525, 200, 5);      
    }    
  }
  if((Months[2]).equals(month)){
    if(DaysOfTheWeek[3].equals(birthday)){
    circle(250, 200, 100);
    circle(250, 200, 5);
    circle(400, 200, 100);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[4].equals(birthday)){
    circle(250, 200, 100);
    circle(250, 200, 5);
    circle(400, 200, 100);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[6].equals(birthday)){
    circle(200, 200, 100);
    circle(200, 200, 5);
    circle(450, 200, 100);
    circle(450, 200, 5);       
    }
    else {
    circle(125, 200, 100);
    circle(125, 200, 5);
    circle(525, 200, 100);
    circle(525, 200, 5);      
    }    
  }
  
  //second type
  if((Months[3]).equals(month)){
    if(DaysOfTheWeek[2].equals(birthday)){
    ellipse(200, 250, 100, 50);
    circle(200, 250, 5);
    ellipse(450, 250, 100, 50);
    circle(450, 250, 5);       
    }
    else if(DaysOfTheWeek[3].equals(birthday)){
    ellipse(250, 200, 100, 50);
    circle(250, 200, 5);
    ellipse(400, 200, 100, 50);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[4].equals(birthday)){
    ellipse(250, 200, 100, 50);
    circle(250, 200, 5);
    ellipse(400, 200, 100, 50);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[6].equals(birthday)){
    ellipse(200, 200, 100, 50);
    circle(200, 200, 5);
    ellipse(450, 200, 100, 50);
    circle(450, 200, 5);       
    }
    else {
    ellipse(125, 200, 100, 50);
    circle(125, 200, 5);
    ellipse(525, 200, 100, 50);
    circle(525, 200, 5);      
    }      
  }
  if((Months[4]).equals(month)){
    if(DaysOfTheWeek[2].equals(birthday)){
    ellipse(200, 250, 100, 50);
    circle(200, 250, 5);
    ellipse(450, 250, 100, 50);
    circle(450, 250, 5);       
    }
    else if(DaysOfTheWeek[3].equals(birthday)){
    ellipse(250, 200, 100, 50);
    circle(250, 200, 5);
    ellipse(400, 200, 100, 50);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[4].equals(birthday)){
    ellipse(250, 200, 100, 50);
    circle(250, 200, 5);
    ellipse(400, 200, 100, 50);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[6].equals(birthday)){
    ellipse(200, 200, 100, 50);
    circle(200, 200, 5);
    ellipse(450, 200, 100, 50);
    circle(450, 200, 5);       
    }
    else {
    ellipse(125, 200, 100, 50);
    circle(125, 200, 5);
    ellipse(525, 200, 100, 50);
    circle(525, 200, 5);      
    }    
  }
  if((Months[5]).equals(month)){
    if(DaysOfTheWeek[2].equals(birthday)){
    ellipse(200, 250, 100, 50);
    circle(200, 250, 5);
    ellipse(450, 250, 100, 50);
    circle(450, 250, 5);       
    }
    else if(DaysOfTheWeek[3].equals(birthday)){
    ellipse(250, 200, 100, 50);
    circle(250, 200, 5);
    ellipse(400, 200, 100, 50);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[4].equals(birthday)){
    ellipse(250, 200, 100, 50);
    circle(250, 200, 5);
    ellipse(400, 200, 100, 50);
    circle(400, 200, 5);       
    }
    else if(DaysOfTheWeek[6].equals(birthday)){
    ellipse(200, 200, 100, 50);
    circle(200, 200, 5);
    ellipse(450, 200, 100, 50);
    circle(450, 200, 5);       
    }
    else {
    ellipse(125, 200, 100, 50);
    circle(125, 200, 5);
    ellipse(525, 200, 100, 50);
    circle(525, 200, 5);      
    }      
  }
  
  //third type
  if((Months[6]).equals(month)){
    print("t");
  }
  if((Months[7]).equals(month)){
    print("t");
  }
  if((Months[8]).equals(month)){
    print("t");
  }
  
  //fourth type
  if((Months[9]).equals(month)){
    print("t");
  }
  if((Months[10]).equals(month)){
    print("t");
  }
  if((Months[11]).equals(month)){
    print("t");
  }
  
/*  
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
  
  
  // accessoires*/
}
