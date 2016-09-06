Die steve;

void setup()
{
	noLoop();
	size(900,600);
	steve = new Die(450,300);
}
void draw()
{
	steve.show();
	steve.roll();
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{	
	int xPos, yPos;
	int face;
	//variable declarations here
	Die(int x, int y) //constructor
	{
		xPos = x;
		yPos = y;
		//variable initializations here
	}
	void roll()
	{
		face = (int)(Math.random() *1);
		
		//your code here
	}
	void show()
	{
		fill(0);
		rect (xPos,yPos, 50,50);
		fill(255);
		if (face == 1){

			ellipse (xPos, yPos, 10,10);
		}
		//your code here
	}
}
