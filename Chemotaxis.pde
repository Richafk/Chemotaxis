Bacteria [] richard;
void setup()   
 { 
 size(500,500);    
 	background(100);
 	frameRate(30);
 	richard = new Bacteria[50]; //space
 	for(int i=0; i<50;i++){
 		richard[i]=new Bacteria(); //constructs and puts into space
 	}
 }   
 void draw()   
 {    
 	for(int i=0; i<richard.length;i++){
		richard[i].show();
 		richard[i].move(); 
 	}
 }  
 class Bacteria    
 {     
 	int myX,myY;
 	int myColor;

 	Bacteria(){
 		myX=250;
 		myY=250;
 		myColor = color((int)(Math.random()*1000));
 		
 	}
 	void move(){
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 	}
 	void show(){
 		
 		fill((int)(Math.random()*1000), (int)(Math.random()*1000), (int)(Math.random()*1000));
 		ellipse(myX+8,myY+8,30,30);
 		ellipse(myX+8,myY-8,30,30);
 		ellipse(myX-8,myY+8,30,30);
 		ellipse(myX-8,myY-8,30,30);
 		ellipse(myX,myY,30,30);
 		
 	}
 }    