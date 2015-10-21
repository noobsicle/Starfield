//your code here
Particle[] bobsters;
void setup()
{
	//your code here
	size(400,400);
	background(0);
	//frameRate(6);
	noStroke();
	bobsters = new Particle[52];
	for (int bobI = 0; bobI < bobsters.length; bobI++)
	{	
		bobsters[0] = new JumboParticle();
		bobsters[0].move();
		bobsters[0].show();
		bobsters[1] = new OddballParticle();
		bobsters[1].move();
		bobsters[1].show();
		bobsters[bobI] = new NormalParticle();
		bobsters[bobI].move();
		bobsters[bobI].show();	
	}

}
void draw()
{
	//your code here
	fill(30,30,30,100);
	rect(0,0,width,height);
	for (int bobI = 0; bobI < bobsters.length; bobI++)
	{
		bobsters[bobI]. move();
		bobsters[bobI]. show();
	}

}
class NormalParticle implements Particle
{
	//your code here
	double x, y, speed, angle;
	int fillR, fillG, fillB;
 NormalParticle()
 {
 	fillR = (int)(Math.random()* 256);
 	fillG = (int)(Math.random()* 256);
 	fillB = (int)(Math.random()* 256);
 	speed = 3;
 	x  = 200;
 	y = 200;
 	angle = Math.random() * 361;
 }
  public void move() 
  {
 	x = x + (Math.cos((float)angle)* speed);
 	y = y + (Math.sin((float)angle)* speed);
  }

  public void show()
  {
 	fill(fillR, fillG, fillB);
 	ellipse((float)x,(float)y, 15,15);
  } 
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	//your code here
	double x, y, speed, angle;
	int fillR, fillG, fillB;
	void show()
	{
		fill(fillR,fillG,fillB);
		ellipse((float)x,(float)y,15,15);
	}
	void move()
	{
		x = x + 5 + (Math.cos((float)angle)* speed);
 		y = y + 5 + (Math.sin((float)angle)* speed);
	}
}
class JumboParticle implements Particle//uses inheritance
{
	//your code here
	double x, y, speed, angle;
	int fillR, fillG, fillB;

	JumboParticle()
	{
		fillR = (int)(Math.random()* 256);
 		fillG = (int)(Math.random()* 256);
 		fillB = (int)(Math.random()* 256);
 		speed = 2;
 		x  = 200;
 		y = 200;
 		angle = Math.random() * 361;
	}
	void show()
	{
		fill(fillR, fillG, fillB);
		ellipse((float)x,(float)y,45,45);
	}
	void move()
	{
		x = x + (Math.cos((float)angle)* speed);
 		y = y + (Math.sin((float)angle)* speed);
	}
}
