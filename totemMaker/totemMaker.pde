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
 //<>//

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
  if(birthday != null) {
    switch (birthday) {
      case "monday": //hexagone
        beginShape();
        vertex(325, 130);
        vertex(495, 205);
        vertex(495, 350);
        vertex(325, 450);
        vertex(155, 350);
        vertex(155, 205);
        endShape(CLOSE);
        break;
      case "tuesday": //cercle
        ellipse(325, 325, 433, 433);
        break;
      case "wednesday": //losange
        ellipse(325, 325, 600, 250);
        break;
      case "thursday": //losange
        ellipse(325, 325, 250, 600);
        break;
      case "friday": //triangle équilaterale
        triangle(100, 491, 550, 491, 325, 158); 
        break;
      case "saturday": //triangle équilaterale °180
        triangle(100, 158, 550, 158, 325, 491);
        break;
      case "sunday": //rectangle hauteur>largeur
        rect(200, 138, 250, 433);
        break;
      
    }
  }
  
  //eyes 
  
  if(month != null && birthday != null) {
    switch (month) {
      case "january" : 
      case "february":
      case "march":
        switch (birthday) {
          case "monday":
          case "tuesday":
          case "wednesday":
          case "saturday":
            circle(125, 200, 100);
            circle(125, 200, 5);
            circle(525, 200, 100);
            circle(525, 200, 5); 
            break;
          case "thursday":
            circle(250, 200, 100);
            circle(250, 200, 5);
            circle(400, 200, 100);
            circle(400, 200, 5); 
            break;
          case "friday":
            circle(250, 200, 100);
            circle(250, 200, 5);
            circle(400, 200, 100);
            circle(400, 200, 5);  
            break;
          case "sunday":
            circle(200, 200, 100);
            circle(200, 200, 5);
            circle(450, 200, 100);
            circle(450, 200, 5);  
            break;
          default:
            print("Eye Error");        
        }
        break;
        case "april":
        case "may":
        case "juny":
          switch (birthday) { 
            case "monday":
            case "wednesday":
              ellipse(200, 250, 100, 50);
              circle(200, 250, 5);
              ellipse(450, 250, 100, 50);
              circle(450, 250, 5);
              break;
            case "thursday":
              ellipse(250, 200, 100, 50);
              circle(250, 200, 5);
              ellipse(400, 200, 100, 50);
              circle(400, 200, 5); 
              break;
            case "friday":
              ellipse(250, 200, 100, 50);
              circle(250, 200, 5);
              ellipse(400, 200, 100, 50);
              circle(400, 200, 5);  
              break;
            case "sunday":
              ellipse(200, 200, 100, 50);
              circle(200, 200, 5);
              ellipse(450, 200, 100, 50);
              circle(450, 200, 5); 
              break;
            default:
              ellipse(125, 200, 100, 50);
              circle(125, 200, 5);
              ellipse(525, 200, 100, 50);
              circle(525, 200, 5); 
          }
          break;
        default:
          print("Month Error");   
      case "july":
      case "august":
      case "september":
        switch (birthday) {
          case "monday":
          case "tuesday":
          case "wednesday":
            curve(175, 500, 185, 260, 265, 260, 275, 300);
            circle(205, 250, 10);
            curve(385, 500, 395, 260, 475, 260, 485, 300);
            circle(415, 250, 10);
            break;
          default:
            curve(175, 500, 185, 260, 265, 260, 275, 300);
            circle(205, 250, 10);
            curve(385, 500, 395, 260, 475, 260, 485, 300);
            circle(415, 250, 10);
        }
      case "october":
      case "november":
      case "december":
        switch (birthday) {
          default:
           rect(100, 50, 100, 20);
           rect(400, 50, 100, 20);
        }
      }
    }
  }
