
void setup()
{
	noLoop();
	size(900,600);
	
	
}
int sum;
void draw()
{
	background(0);
	for ( int x= 0; x<900; x+=50){

		for (int y=50; y<600; y+=50){
			Die steve = new Die(x,y);
			steve.show();
			steve.roll();
			sum = sum + steve.face;
		}
		
	}
	
	textSize(40);
	fill(255);
	text ("TOTAL: " + sum, 350, 40);

}

void mousePressed()
{
	redraw();
	sum = 0;
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
	}
	void roll()
	{
		face = (int)(Math.random()*6)+1;
		noStroke();
		fill(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
		
		if (face == 1){
			ellipse (xPos+26, yPos +25, 10, 10);
			
		}
		if (face == 2){
			ellipse (xPos+15, yPos+25, 10,10);
			ellipse (xPos+38, yPos+25, 10,10);
			
		}
		if (face == 3){
			ellipse (xPos+12, yPos+25, 10,10);
			ellipse (xPos+26, yPos +25, 10, 10);
			ellipse (xPos+40, yPos+25, 10,10);
			
		}
		if (face == 4){
			ellipse (xPos+12, yPos+15, 10,10);
			ellipse (xPos+12, yPos+35, 10,10);
			ellipse (xPos+40, yPos+15, 10,10);
			ellipse (xPos+40, yPos+35, 10,10);

		}
		if (face == 5){
			ellipse (xPos+12, yPos+13, 10,10);
			ellipse (xPos+12, yPos+37, 10,10);
			ellipse (xPos+40, yPos+13, 10,10);
			ellipse (xPos+40, yPos+37, 10,10);
			ellipse (xPos+26, yPos +25, 10, 10);

		}
		if (face == 6){
			ellipse (xPos+12, yPos+12, 10,10);
			ellipse (xPos+12, yPos+40, 10,10);
			ellipse (xPos+12, yPos+26, 10,10);
			ellipse (xPos+40, yPos+12, 10,10);
			ellipse (xPos+40, yPos+40, 10,10);
			ellipse (xPos+40, yPos +26, 10, 10);

		}
		
	}
	void show()
	{
		fill(0);
		stroke(81, 81, 81);
		rect (xPos,yPos, 50,50);
		
	}
	
}
