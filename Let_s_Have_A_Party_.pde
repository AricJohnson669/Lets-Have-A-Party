float square1X = 20;
float square1Y = 20;
float square2X = 100;
float square2Y = 20;
float ellipse1X =20;
float ellipse1Y =150;
float ellipse2X =520;
float ellipse2Y =20;
float ellipse3X =450;
float ellipse3Y =20;
float tri1X =520;
float tri1Y =20;
float tri2X =540;
float tri2Y =40;
float tri3X =520;
float tri3Y =40;
float tri4X =20;
float tri4Y =20;
float tri5X =40;
float tri5Y =40;
float tri6X =20;
float tri6Y =40;
int message = 0;
int mouseClicks = 0;

void setup ()
{
  size (600, 600);
  background (8, 232, 255);
  textSize(200);
} 
void draw ()
{
   
  //Confetti
  background (246, 255, 3);
   fill (8, 255, 55);
  noStroke();
  rect ( square1X, square1Y, 20, 20);
   fill (27, 8, 255);
  noStroke();
  rect ( square2X, square2Y, 20, 20);
   fill (255, 0, 0);
  noStroke();
  ellipse ( ellipse1X, ellipse1X, 20, 20);
   fill (255, 3, 222);
  noStroke();
  triangle (tri1X, tri1Y, tri2X, tri2Y, tri3X, tri3Y);
   fill (250, 164, 3);
  noStroke();
  ellipse ( ellipse2X, ellipse2Y, 20, 20);
   fill (#C783F5);
  noStroke();
  ellipse ( ellipse3X, ellipse3Y, 20, 20);
   fill (#03DFFA);
  noStroke();
  triangle (tri4X, tri4Y, tri5X, tri5Y, tri6X, tri6Y);
  
  // Messages
  fill (0);
  textSize (50);
  text ("Let's Have A Party!", 100, 100);
  textSize (25);
  text ("Click the screen to give presents", 100, 180);
  text ("and to show a secret message!", 100, 210);
  
  square1X = square1X +0.5;
  square1Y = square1Y +0.9;
  square2X = square2X +0.5;
  square2Y = square2Y +1.2;
  ellipse1X = ellipse1X +0.5;
  ellipse1Y = ellipse1Y +2;
  ellipse2X = ellipse2X -0.5;
  ellipse2Y = ellipse2Y +2;
  ellipse3X = ellipse3X +0.5;
  ellipse3Y = ellipse3Y +2;
  
  tri1X = tri1X -0.5;
  tri1Y = tri1Y +1;
  tri2X = tri2X -0.5;
  tri2Y = tri2Y +1;
  tri3X = tri3X -0.5;
  tri3Y = tri3Y +1; 
  tri4X = tri4X +0.3;
  tri4Y = tri4Y +1;
  tri5X = tri5X +0.3;
  tri5Y = tri5Y +1;
  tri6X = tri6X +0.3;
  tri6Y = tri6Y +1;

  //Secret message 
  textSize(50);
  fill (250, 0, 0, message);
  text ("Made by Aric :)", 100, 300);
  
  //Present Counter
  fill (0);
  text ("Number of presents:", 20, 550);
  text (mouseClicks+"",520, 550);
}

void mouseClicked()
{
    message = message + 5;
    
}

void mousePressed() 
{
  if (mouseButton == LEFT) { mouseClicks++; }
  else { mouseClicks = 0; }
}
