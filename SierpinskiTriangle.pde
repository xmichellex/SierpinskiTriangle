public void setup()
{
	size(600, 600); 
	background(0, 0, 0);  
}
public void draw()
{
sierpinski(10, 590, 580); 
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
//triangle(x, y, x+(len/2), y, (2x+len)/4, y + (2x+len)*sqrt(3)/4);
stroke(102, 255, 255, 3); 
strokeWeight(1); 
noFill(); 
	if(len > 5) { 
   sierpinski(x, y, len/2); 
   sierpinski(x + len/2, y, len/2); 
   sierpinski(x + len/4, y - len/2, len/2); 
   } else { 
		triangle(x, y, x+len, y, x+len/2, (float)(y-Math.sqrt(3)*(len/2))); 
	} 
} 