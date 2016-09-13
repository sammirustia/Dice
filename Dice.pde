Die ray;
int xX;
int yY;
int dot;
int total;

void setup()
{
	size(400,400);
	ray = new Die(250,250);
	noLoop();
}
void draw()
{
	background(55,195,159);
	for(yY = 80;yY<=300;yY+=100){
		for(xX = 80;xX<=300;xX+=100) {
			ray.roll();
			ray.show();
		}
	}
	textSize(20);
	text("Total: " + total,160,40);
}
void mousePressed()
{
	redraw();
	total = 0;
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
		noStroke();
		fill(13,104,149);
		total = total + dot;	
	}
	void show()
	{
		noStroke();
		fill(222,231,229);
		rect(xX,yY,50,50,30);
		//fill(13,104,149);

		if (dot == 1) {
			fill(192,280,251);
			ellipse(xX + 25,yY + 25, 10,10);
		}
		if (dot == 2) {
			fill(158,215,241);
			ellipse(xX + 16,yY + 25,10,10);
			ellipse(xX + 33,yY + 25, 10,10);
		}
		if (dot == 3) {
			fill(129,203,237);
			ellipse(xX + 13,yY + 12,10,10);
			ellipse(xX + 24,yY + 24, 10,10);
			ellipse(xX + 36,yY + 36,10,10);
		}
		if (dot == 4) {
			fill(91,187,230);
			ellipse(xX + 16,yY + 16,10,10);
			ellipse(xX + 33,yY + 16, 10,10);
			ellipse(xX + 16,yY + 32,10,10);
			ellipse(xX + 33,yY + 32, 10,10);
		}
		if (dot == 5) {
			fill(45,156,206);
			ellipse(xX + 12,yY + 14,10,10);
			ellipse(xX + 38,yY + 14, 10,10);
			ellipse(xX + 12,yY + 36,10,10);
			ellipse(xX + 38,yY + 36, 10,10);
			ellipse(xX + 25, yY + 25, 10,10);
		}
		if (dot == 6) {
			fill(0,123,179);
			ellipse(xX + 14,yY + 12,10,10);
			ellipse(xX + 14,yY + 25, 10,10);
			ellipse(xX + 14,yY + 38,10,10);
			ellipse(xX + 36,yY + 12, 10,10);
			ellipse(xX + 36,yY + 25, 10,10);
			ellipse(xX + 36,yY + 38, 10,10);
		}
	}
}
