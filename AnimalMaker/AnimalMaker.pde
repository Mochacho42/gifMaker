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
  cp5.addTextfield("department").setPosition(0,200).setSize(100,20).setAutoClear(false);

//  cp5.addTextfield("size").setPosition(0,120).setSize(100,20).setAutoClear(false);
//  cp5.addTextfield("familymember").setPosition(0,160).setSize(100,20).setAutoClear(false);
//  cp5.addTextfield("shoesize").setPosition(0,240).setSize(100,20).setAutoClear(false);
  
  
  cp5.addBang("Submit").setPosition(0, 280).setSize(100, 25);
  

 
}


void Submit() {
  
  name = cp5.get(Textfield.class, "name").getText();
  name = new String(name);
  
  birthday = cp5.get(Textfield.class, "birthday").getText();
  birthday = new String(birthday);
  
  month = cp5.get(Textfield.class, "month").getText();
  month = new String(month);
  
  department = cp5.get(Textfield.class, "department").getText();
  department = new String(department);
  /*
  size=cp5.get(Textfield.class, "size").getText();
  familymember=cp5.get(Textfield.class, "familymember").getText();
  department=cp5.get(Textfield.class, "department").getText();
  shoesize=cp5.get(Textfield.class, "shoesize").getText();
  print(name + "\n" + birthday + "\n" + birthtime + "\n" + size + "\n" + familymember + "\n" + department + "\n" + shoesize);
*/
  lengthname = name.length();
}


void draw()
{
  
  background(150);
  
  //convert month, size, familymember, department, shoesize;
  
  
  //hair

  if(1 <= lengthname && lengthname <= 3) {
    fill(243, 214, 23);
    triangle(100, 67, 550, 67, 325, 400);//triangle équilaterale ° 180
  }
  if(4 <= lengthname && lengthname <= 6) {
    fill(157, 62, 12);
    triangle(150, 400, 500, 400, 325, 67);
  }  
  if(7 <= lengthname && lengthname <= 9) {
    fill(237, 0, 0);
    rect(200, 50, 250, 300);
  }
  if(10 <= lengthname) {
    fill(136, 77, 167);
    rect(150, 138, 350, 250);
  }


  // formes visage
  if(birthday != null) {
    switch (birthday) {
      case "monday": //hexagone
        fill(255, 255, 255);
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
        fill(255, 255, 255);
        ellipse(325, 325, 433, 433);
        break;
      case "wednesday": //losange
        fill(255, 255, 255);
        ellipse(325, 325, 600, 250);
        break;
      case "thursday": //losange
        fill(255, 255, 255);
        ellipse(325, 325, 250, 600);
        break;
      case "friday": //triangle équilaterale
        fill(255, 255, 255);
        triangle(100, 491, 550, 491, 325, 158); 
        break;
      case "saturday": //triangle équilaterale °180
        fill(255, 255, 255);
        triangle(100, 158, 550, 158, 325, 491);
        break;
      case "sunday": //rectangle hauteur>largeur
        fill(255, 255, 255);
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
            fill(253, 108, 158);
            circle(125, 200, 100);
            fill(0, 0, 0);
            circle(125, 200, 5);
            fill(253, 108, 158);
            circle(525, 200, 100);
            fill(0, 0, 0);
            circle(525, 200, 5); 
            break;
          case "thursday":
            fill(135, 233, 144);
            circle(250, 200, 100);
            fill(0, 0, 0);
            circle(250, 200, 5);
            fill(135, 233, 144);
            circle(400, 200, 100);
            fill(0, 0, 0);
            circle(400, 200, 5); 
            break;
          case "friday":
             fill(15, 157, 232);
            circle(250, 200, 100);
            fill(0, 0, 0);
            circle(250, 200, 5);
            fill(15, 157, 232);
            circle(400, 200, 100);
            fill(0, 0, 0);
            circle(400, 200, 5);  
            break;
          case "sunday":
             fill(173, 79, 9);
            circle(200, 200, 100);
            fill(0, 0, 0);
            circle(200, 200, 5);
            fill(173, 79, 9);
            circle(450, 200, 100);
            fill(0, 0, 0);
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
              fill(49, 140, 231);
              ellipse(200, 250, 100, 50);
              fill(0, 0, 0);
              circle(200, 250, 5);
              fill(49, 140, 231);
              ellipse(450, 250, 100, 50);
              fill(0, 0, 0);
              circle(450, 250, 5);
              break;
            case "thursday":
              fill(87, 213, 59);
              ellipse(250, 200, 100, 50);
              fill(0, 0, 0);
              circle(250, 200, 5);
              fill(87, 213, 59);
              ellipse(400, 200, 100, 50);
              fill(0, 0, 0);
              circle(400, 200, 5);
              break;
            case "friday":
              fill(223, 109, 20);
              ellipse(250, 200, 100, 50);
              fill(0, 0, 0);
              circle(250, 200, 5);
              fill(223, 109, 20);
              ellipse(400, 200, 100, 50);
              fill(0, 0, 0);
              circle(400, 200, 5);  
              break;
            case "sunday":
              fill(119, 181, 254);
              ellipse(200, 200, 100, 50);
              fill(0, 0, 0);
              circle(200, 200, 5);
              fill(119, 181, 254);
              ellipse(450, 200, 100, 50);
              fill(0, 0, 0);
              circle(450, 200, 5); 
              break;
            default:
              fill(121, 137, 51);
              ellipse(125, 200, 100, 50);
              fill(0, 0, 0);
              circle(125, 200, 5);
              fill(121, 137, 51);
              ellipse(525, 200, 100, 50);
              fill(0, 0, 0);
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
            fill(254, 191, 210);
            curve(175, 500, 185, 260, 265, 260, 275, 300);
            fill(0, 0, 0);
            circle(205, 250, 10);
            fill(254, 191, 210);
            curve(385, 500, 395, 260, 475, 260, 485, 300);
            fill(0, 0, 0);
            circle(415, 250, 10);
            break;
          default:
            fill (116, 208, 241);
            curve(175, 500, 185, 260, 265, 260, 275, 300);
            fill(0, 0, 0);
            circle(205, 250, 10);
            fill(116, 208, 241);
            curve(385, 500, 395, 260, 475, 260, 485, 300);
            fill(0, 0, 0);
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
    
    
/*   
    //nose
    
    if (month != null && birthday != null && department != null) {
      {
        if (department >= 1 && department <= 20) {
          quad(285, 280, 300, 285, 350, 360, 290, 360); //pointy nose
        }
        else if (department >= 21 && department <= 41) {
          arc(320, 300, 80, 90, 0, PI); //nose bow
        }
        else if (department >= 42 && department <= 62 || department == 975) {
          beginShape();
            vertex(320, 280);
            vertex(355, 300);
            vertex(355, 370);
            vertex(320, 360);        //nose plane
            vertex(285, 370);
            vertex(285, 300);
          endShape(CLOSE);
        }
        else if (department >= 63 && department <= 83) {
         rect(310, 270, 30, 80);   //rectangular nose
        }
        else if (department >= 84 && department <= 90 || department == 95) {
          ellipse(320, 320, 70, 70);     //round nose
        }
        else if (department == 91 || department == 971 || deparment == 976) {
          beginShape();
            vertex(320, 280);
            vertex(355, 300);
            vertex(355, 340);  //hexagon nose
            vertex(320, 360);
            vertex(285, 340);
            vertex(285, 300);
          endShape(CLOSE);
        }
        else if (department == 92 || department == 972) {
          triangle(285, 375, 325, 285, 365, 375); //big nose
        }
        else if (department == 93 || department == 973) {
          quad(290, 290, 350, 290, 310, 330, 330, 330); //cat nose
        }
        else if (department == 94 || department == 974) {
          beginShape();
            curveVertex(275, 425);
            curveVertex(285, 415);
            curveVertex(300, 395);
            curveVertex(325, 325);   //rounded nose
            curveVertex(350, 395);
            curveVertex(365, 415);
            curveVertex(375, 425);
          endShape();
        }
  }
} */
}
