void setup()
{
size(640, 360);
background(234, 149, 197);
noStroke();
}

void draw()
{
  
  background(234, 149, 197);
  
//le premier a
 
fill(150, 35, 35);
ellipse(100, 230, 150, 150);

if (mousePressed)
{
  fill(234, 149, 197);
  ellipse(100, 230, 110, 110);
}
else
{

fill(255);
ellipse(100, 230 , 110, 110);

fill(150, 35, 35);
rect(170, 150, 20, 150);

  fill(28, 116, 0);
//ellipse(100, 230, 20, 20);
ellipse(60 + mouseX/8, 190 + mouseY/5, 40, 40);

  fill(0);
//ellipse(100, 230, 20, 20);
ellipse(60 + mouseX/8, 190 + mouseY/5, 20, 20);
}

fill(150, 35, 35);
rect(170, 150, 20, 150);


//le d

fill(150, 35, 35);
ellipse(300, 230, 150, 150);
if (mousePressed)
{fill(255);
ellipse(300, 230, 110, 110);
 fill(85, 156, 255);
//ellipse(100, 230, 20, 20);
ellipse(260 + mouseX/8, 190 + mouseY/5, 40, 40);

  fill(0);
//ellipse(100, 230, 20, 20);
ellipse(260 + mouseX/8, 190 + mouseY/5, 20, 20);

 
}
else
{
 fill(234, 149, 197);
  ellipse(300, 230, 110, 110);
//oeil

}

fill(150, 35, 35);
rect(370, 40, 20, 260);

//le deuxième a
  
fill(150, 35, 35);
ellipse(500, 230, 150, 150);

if (mousePressed)
{
  fill(234, 149, 197);
  ellipse(500, 230, 110, 110);
}
else
{
fill(255);
ellipse(500, 230, 110, 110);

  fill(136, 78, 0);
//ellipse(100, 230, 20, 20);
ellipse(460 + mouseX/8, 190 + mouseY/5, 40, 40);

  fill(0);
//ellipse(100, 230, 20, 20);
ellipse(460 + mouseX/8, 190 + mouseY/5, 20, 20);
}

fill(150, 35, 35);
rect(570, 150, 20, 150);

// les yeux 

//milieu
 

//gauche



//droite


//fill(0);
//ellipse(mouseX + 200, mouseY, 20, 20);  

//fill(0);
//ellipse(mouseX - 200, mouseY, 20, 20);



}
