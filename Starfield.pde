//your code here
NormalParticle[] bobsters = new NormalParticle[50];
NormalParticle bob = new NormalParticle();
void setup()
{
	//your code here
	size(400,400);
	background(0);
	for (int bobI = 0; bobI < bobsters.length; bobI++)
	{
		bobsters[bobI] = new NormalParticle();
		bobsters[bobI]. move();
		bobsters[bobI]. show();
	}

}
void draw()
{
	//your code here
	//background(0);
	fill(210,210,210,100);
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
 	ellipse((float)x,(float)y, 40,40);
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
	void show()
	{

	}
	void move()
	{

	}
}
class JumboParticle implements Particle//uses inheritance
{
	//your code here
	void show()
	{

	}
	void move()
	{

	}
}

