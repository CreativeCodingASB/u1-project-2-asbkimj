float hue = 0;
float saturation = 255; 
float brightness = 255;
int rotateint = 5;
float lengthX = 200;
boolean drawSpiral; 

int clickX;
int clickY;


void setup()
{
  colorMode(HSB);
  size(900, 900);
  background(255);
  noStroke();
}

void draw()
{
  if (drawSpiral)
  {
    drawSpiral();
    rotateint += 5;
  }
  if (lengthX == 0)
  {
    drawSpiral = false;
    lengthX = 200;
  }
}

void drawRect()
{
  smooth();
  fillColour();
  rect(clickX, clickY, lengthX, 20, 0, 7, 7, 0);
}


void mouseClicked()
{
  clickX = mouseX;
  clickY = mouseY;

  drawSpiral = true;
}

void drawSpiral()
{
  fill(hue, saturation, brightness, 60);
  pushMatrix();
  translate(clickX, clickY);
  rotate(rotateint);
  fillColour(); 
  rect(0, 0, lengthX, 20, 0, 7, 7, 0);
  popMatrix();
  lengthX -= 0.5;
}


void fillColour()
{
  fill(hue, saturation, brightness, 60);
  hue ++;
  
  if (hue == 360)
  { hue = 0;
}

 
}