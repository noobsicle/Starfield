//your code here
Particle[] bobsters;
void setup()
{
	//your code here
	size(400,400);
	background(0);
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
 	if((x > 450)||
 		  (x < -50)||
 		  (y < -50)||
 		  (y > 450))
 		  {
 		  	uniqueMove();
 		  }
  }
  public void uniqueMove()
	{
		x = 200;
		y = 200;
		fillR = (int)(Math.random()* 256);
 		fillG = (int)(Math.random()* 256);
 		fillB = (int)(Math.random()* 256);
		x = x + (Math.cos((float)angle)* speed);
 		y = x + (Math.sin((float)angle)* speed);
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
	int fillR, fillG, fillB, angChange;
	OddballParticle()
	{
		fillR = (int)(Math.random()* 256);
 		fillG = (int)(Math.random()* 256);
 		fillB = (int)(Math.random()* 256);
 		speed = 3;
 		x  = 200;
 		y = 200;
 		angle = Math.random() * 361;
 		angChange = (int)(Math.random() * 2);
	}
	public void show()
	{
		fill(fillR,fillG,fillB);
		ellipse((float)x,(float)y,15,15);
	}
	public void move()
	{
		x = x + 5 + (Math.cos((float)angle)* speed);
 		y = y + 5 + (Math.sin((float)angle)* speed);

 		if((x < 400)&&
 		  (x > 0)&&
 		  (y > 0)&&
 		  (y < 400))
 		{
 			if (angChange == 0)
 			{
 				angle += (Math.random() * 1);
 				angChange = (int)(Math.random() * 2);	
 			else if (angChange == 1)
 			{
 				angle -= (Math.random() * 1);
 				angChange = (int)(Math.random() * 2);
 			}
 		
 			}	
 		}
 		
 		if((x > 450)||
 		  (x < -50)||
 		  (y < -50)||
 		  (y > 450))
 		  {
 		  	uniqueMove();
 		  }
	}
	public void uniqueMove()
	{
		x = 200;
		y = 200;
		fillR = (int)(Math.random()* 256);
 		fillG = (int)(Math.random()* 256);
 		fillB = (int)(Math.random()* 256);
 		angle = Math.random() * 361;
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
	public void show()
	{
		fill(fillR, fillG, fillB);
		ellipse((float)x,(float)y,45,45);
	}
	public void move()
	{
		x = x + (Math.cos((float)angle)* speed);
 		y = y + (Math.sin((float)angle)* speed);
 		if((x > 450)||
 		  (x < -50)||
 		  (y < -50)||
 		  (y > 450))
 		  {
 		  	uniqueMove();
 		  }
	}
	public void uniqueMove()
	{
		x = 200;
		y = 200;
		fillR = (int)(Math.random()* 256);
 		fillG = (int)(Math.random()* 256);
 		fillB = (int)(Math.random()* 256);
		angle = Math.random() * 361;
		x = x  + (Math.cos((float)angle)* speed);
 		y = y  + (Math.sin((float)angle)* speed);
	}
}
