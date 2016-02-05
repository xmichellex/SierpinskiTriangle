public void setup()
{
	size(600, 600); 
	background(0, 0, 0);  
}
public void draw()
{
sierpinski(0, 550, 600); 
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
//triangle(x, y, x+(len/2), y, (2x+len)/4, y + (2x+len)*sqrt(3)/4);
stroke(102, 255, 255, 3); 
strokeWeight(3); 
noFill(); 
if(len<=20) { 
	triangle(x, y, x+len, y, x + len/2, (float)(y-Math.sqrt(3)*(len/2))) ; 
	}
	else { 
		triangle(x, y, x+len/2, y, x+len/4, (float)(y-Math.sqrt(3)*(len/4))); 
		} 
} 