import controlP5.*;

ControlP5 cp5;
  
Table table;
TotemHair rect, tria;
String birthday, month, name, Load_Data,Load_Data_Input, familymember, department, shoesize;
int lengthname;

void setup()
{
  size(650, 650);
  table = new Table();
  
  table = loadTable("new.csv", "header");
  

  
  cp5 = new ControlP5(this);
  
  cp5.addTextfield("name").setPosition(0,0).setSize(100,20).setAutoClear(false); //hair
  cp5.addTextfield("birthday").setPosition(0,40).setSize(100,20).setAutoClear(false); //face
  cp5.addTextfield("month").setPosition(0,80).setSize(100,20).setAutoClear(false);  //eyes
  cp5.addTextfield("Load_Data_Input").setPosition(0,120).setSize(100,20).setAutoClear(false);
//  cp5.addTextfield("familymember").setPosition(0,160).setSize(100,20).setAutoClear(false);
//  cp5.addTextfield("department").setPosition(0,200).setSize(100,20).setAutoClear(false);
//  cp5.addTextfield("shoesize").setPosition(0,240).setSize(100,20).setAutoClear(false);
  
  
  cp5.addBang("Submit").setPosition(0, 280).setSize(100, 25);
  cp5.addBang("Load_Data").setPosition(0, 320).setSize(100, 25);
  
  table.addColumn("name");
  table.addColumn("namelength");
  table.addColumn("birthday");
  table.addColumn("month");
 
}

void Load_Data() {
  
  TableRow result = table.getRow(1);

    //print(Load_Data);
    birthday = result.getString("birthday");
    month = result.getString("month");
    lengthname = result.getInt("namelength");

    print(lengthname, month, birthday);

}

void Submit() {

  name=cp5.get(Textfield.class, "name").getText();
  name = new String(name);
  
  birthday=cp5.get(Textfield.class, "birthday").getText();
  birthday = new String(birthday);
  
  month=cp5.get(Textfield.class, "month").getText();
  month = new String(month);
 
  Load_Data_Input=cp5.get(Textfield.class, "Load_Data_Input").getText();
  Load_Data_Input = new String(Load_Data_Input);
  
  lengthname = name.length();
  
  TableRow newRow = table.addRow();
  newRow.setString("name", name);
  newRow.setInt("namelength", lengthname);
  newRow.setString("birthday", birthday);
  newRow.setString("month", month);
  
  saveTable(table, "data/new.csv");

}
 //<>//

void draw()
{

  background(150);
  
  //hair

  if(1 <= lengthname && lengthname <= 3) {
    tria = new TotemHair(100, 67, 550, 67, 325, 400);
  }
  if(4 <= lengthname && lengthname <= 6) {
    tria = new TotemHair(150, 400, 500, 400, 325, 67);
  }  
  if(7 <= lengthname && lengthname <= 9) {
    rect =  new TotemHair(200, 50, 250, 300);
  }
  if(10 <= lengthname) {
    rect =  new TotemHair(150, 138, 350, 250);
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
          //print("Month Error");   
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
          
        }
      case "october":
      case "november":
      case "december":
        switch (birthday) {
          case "monday":
          case "tuesday":
          case "wednesday":
          case "thursday":
          case "friday":
          case "saturday":
          case "sunday":
           rect(205, 250, 100, 20);
           rect(345, 250, 100, 20);
           break;
        }
      }
    }
  }
  
class TotemHair {
  float x1, y1, x2, y2, x3, y3;

  TotemHair(float x1_t, float y1_t, float x2_t, float y2_t) {
    x1 = x1_t;
    y1 = y1_t;
    
    x2 = x2_t;
    y2 = y2_t;
    
    rect(x1, y1, x2, y2);
  }  
  TotemHair(float x1_t, float y1_t, float x2_t, float y2_t, float x3_t, float y3_t) {
    x1 = x1_t;
    y1 = y1_t;
    
    x2 = x2_t;
    y2 = y2_t;
   
    x3 = x3_t;
    y3 = y3_t;
    
    triangle(x1, y1, x2, y2, x3, y3);
  }
}
