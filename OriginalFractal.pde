boolean hi = false;
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
  

text("Will you be my valentine?",300,50);
  translate(300, 300);
  rotate(PI/6);
  myFractal2(0, 0, 160);
  rotate(-PI/6);
  translate(-300, -300);
  myFractal(300, 300, 150, 150);
}
}

public void mouseClicked(){
  hi = true;
}

public void myFractal(float x, float y, float siz, float col) {


  stroke(100, 1, 1);
  fill(col, 10, 10);


  ellipse(x+siz, y, siz, siz);
  ellipse(x+siz/1.5, y+siz/1.5, siz, siz);
  ellipse(x, y-siz, siz, siz);
  ellipse(x-siz/1.5, y-siz/1.5, siz, siz);
  ellipse(x, y+siz, siz, siz);
  ellipse(x-siz/1.5, y+siz/1.5, siz, siz);
  ellipse(x-siz, y, siz, siz);
  ellipse(x+siz/1.5, y-siz/1.5, siz, siz);



  if (siz >1 ) {

    myFractal(x, y, siz/1.4, col/1.1);
  }
}

public void myFractal2(float x, float y, float siz) {

  noStroke();

  fill(10, 70, 5);


  ellipse(x+siz, y, siz, siz);
  ellipse(x+siz/1.5, y+siz/1.5, siz, siz);
  ellipse(x, y-siz, siz, siz);
  ellipse(x-siz/1.5, y-siz/1.5, siz, siz);
  ellipse(x, y+siz, siz, siz);
  ellipse(x-siz/1.5, y+siz/1.5, siz, siz);
  ellipse(x-siz, y, siz, siz);
  ellipse(x+siz/1.5, y-siz/1.5, siz, siz);




  if (siz >1 ) {

    myFractal2(x, y, siz/1.4);
  }
}
