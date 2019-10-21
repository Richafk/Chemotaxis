Bacteria [] richard;
void setup()   
 {     
 	background(500);
 	framerate(30);
 	for(int i=0; i<1;i++){
 		richard[i]=new Bacteria();
 	}
 }   
 void draw()   
 {    
 	for(int i=0; i<richard.length;i++){
		Bacteria.show();
 		Bacteria.walk(); 
 	}
 }  
 class Bacteria    
 {     
 	int myX, int myY;
 	{
 		myX=750;
 		myY=250;
 	}
 	void walk(){
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 	}
 	void show(){
 		ellipse(myX,myY,50,50);
 	}
 }    