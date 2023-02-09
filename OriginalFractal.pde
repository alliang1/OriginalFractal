boolean hi = false;
float rot = 0;
public void setup() {
  size(600, 600);

}
public void draw() {
  background(240, 179, 186);
  textAlign(CENTER);
textSize(40);
fill(234,88,105);
text("Click for a surprise!",300,300);
  
if (hi == true){
  
rot = rot -0.0001;
text("Will you be my valentine?",300,50);
textSize(20);
text("this hypnotizing rose will make you say yes",300,550);
 
  myFractal2(0, 0, 150);
  myFractal(0, 0, 150, 150);
}
}

public void mouseClicked(){
  hi = true;
}

public void myFractal(float x, float y, float siz, float col) {


  stroke(100, 1, 1);
  fill(col, 10, 10);

translate(300,300);
rotate(rot);
  ellipse(x+siz, y, siz, siz);
  ellipse(x+siz/1.5, y+siz/1.5, siz, siz);
  ellipse(x, y-siz, siz, siz);
  ellipse(x-siz/1.5, y-siz/1.5, siz, siz);
  ellipse(x, y+siz, siz, siz);
  ellipse(x-siz/1.5, y+siz/1.5, siz, siz);
  ellipse(x-siz, y, siz, siz);
  ellipse(x+siz/1.5, y-siz/1.5, siz, siz);
//rotate(rot);
translate(-300,-300);



  if (siz >1 ) {

    myFractal(x, y, siz/1.4, col/1.1);
  }
}

public void myFractal2(float x, float y, float siz) {

  noStroke();

  fill(10, 70, 5);

translate(300,300);
rotate(rot);
  ellipse(x+siz, y, siz, siz);
  ellipse(x+siz/1.5, y+siz/1.5, siz, siz);
  ellipse(x, y-siz, siz, siz);
  ellipse(x-siz/1.5, y-siz/1.5, siz, siz);
  ellipse(x, y+siz, siz, siz);
  ellipse(x-siz/1.5, y+siz/1.5, siz, siz);
  ellipse(x-siz, y, siz, siz);
  ellipse(x+siz/1.5, y-siz/1.5, siz, siz);
  translate(-300,-300);




  if (siz >1 ) {

    myFractal2(x, y, siz/1.4);
  }
}
