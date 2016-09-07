Die ray;

void setup()
{
	size(400,400);
	background(55,195,159);
	ray = new Die(250,250);
	noLoop();
}
void draw()
{
	ray.show();
	ray.roll();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int xX;
	int yY;
	int dot;

	Die(int x, int y) //constructor
	{
		xX = xX + 175;
		yY = yY + 175;
	}
	void roll()
	{
		dot = 1;
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


	}
}
