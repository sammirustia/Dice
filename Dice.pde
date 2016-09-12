Die ray;
int xX;
int yY;
int dot;

void setup()
{
	size(400,400);
	background(55,195,159);
	ray = new Die(250,250);
	noLoop();
}
void draw()
{
	

	for(yY = 80;yY<=300;yY+=100){
		for(xX = 80;xX<=300;xX+=100) {
			ray.roll();
			ray.show();
		}
	}

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	Die(int x, int y) //constructor
	{
		xX = xX + 175;
		yY = yY + 175;
	}
	void roll()
	{
		dot = ((int)(Math.random()*6)+1);
	}
	void show()
	{
		noStroke();
		fill(222,231,229);
		rect(xX,yY,50,50);
		fill(13,104,149);

		if (dot == 1) {
			ellipse(xX + 25,yY + 25, 10,10);
		}
		if (dot == 2) {
			ellipse(xX + 16,yY + 25,10,10);
			ellipse(xX + 33,yY + 25, 10,10);
		}
		if (dot == 3) {
			ellipse(xX + 13,yY + 12,10,10);
			ellipse(xX + 24,yY + 24, 10,10);
			ellipse(xX + 36,yY + 36,10,10);
		}
		if (dot == 4) {
			ellipse(xX + 16,yY + 16,10,10);
			ellipse(xX + 33,yY + 16, 10,10);
			ellipse(xX + 16,yY + 32,10,10);
			ellipse(xX + 33,yY + 32, 10,10);
		}
		if (dot == 5) {
			ellipse(xX + 12,yY + 14,10,10);
			ellipse(xX + 38,yY + 14, 10,10);
			ellipse(xX + 12,yY + 36,10,10);
			ellipse(xX + 38,yY + 36, 10,10);
			ellipse(xX + 25, yY + 25, 10,10);
		}
		if (dot == 6) {
			ellipse(xX + 14,yY + 12,10,10);
			ellipse(xX + 14,yY + 25, 10,10);
			ellipse(xX + 14,yY + 38,10,10);
			ellipse(xX + 36,yY + 12, 10,10);
			ellipse(xX + 36,yY + 25, 10,10);
			ellipse(xX + 36,yY + 38, 10,10);
		}
	}
}
