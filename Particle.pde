// The Nature of Code
// <http://www.shiffman.net/teaching/nature>
// Spring 2010
// Box2DProcessing example

// A circular particle

class Particle {

  // We need to keep track of a Body and a radius
  Body body;
  float r;

 


  Particle(float x, float y, float r_) {
    r = r_;
    // This function puts the particle in the Box2d world
    makeBody(x, y, r);
    body.setUserData(this);
    fill(14,35,148);
    //col = color(0,0,0);
  }

  // This function removes the particle from the box2d world
  void killBody() {
    box2d.destroyBody(body);
  }

  // Change color when hit
 /* void change() {
    col = color(255, 0, 0);
  }
  */

  // Is the particle ready for deletion?
  boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Is it off the bottom of the screen?
    if (mousePressed) {
      killBody();
      return true;
    }
    return false;
    
  }
  

  // 
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
    float a = body.getAngle();
    
    pushMatrix();
    translate(150, 180);
    rotate(a);
    fill(14,35,148);
    noStroke();
    ellipse(0, 0, 150, 150);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(133, 160);
    rotate(a);
    fill(0,0,0);
    noStroke();
    ellipse(0, 0, 100, 100);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(180, 120);
    rotate(a);
    fill(230,169,228,80);
    noStroke();
    ellipse(0, 0, 40, 40);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(180, 195);
    rotate(a);
    fill(98,240,134,150);
    noStroke();
    ellipse(0, 0, 30, 30);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(156, 200);
    rotate(a);
    fill(98,220,240,105);
    noStroke();
    ellipse(0, 0, 15, 15);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(198, 220);
    rotate(a);
    fill(218,153,31,80);
    noStroke();
    ellipse(0, 0, 45, 45);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(175, 226);
    rotate(a);
    fill(218,153,31,150);
    noStroke();
    ellipse(0, 0, 30, 30);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(125, 247);
    rotate(a);
    fill(230,130,224);
    noStroke();
    ellipse(0, 0, 4, 4);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(148, 255);
    rotate(a);
    fill(151,218,213,150);
    noStroke();
    ellipse(0, 0, 32, 32);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(220, 230);
    rotate(a);
    fill(211,104,210,50);
    noStroke();
    ellipse(0, 0, 20, 20);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(210, 235);
    rotate(a);
    fill(0,0,0);
    noStroke();
    ellipse(0, 0, 5, 5);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(203, 260);
    rotate(a);
    fill(65,155,214,50);
    noStroke();
    ellipse(0, 0, 40, 40);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    //externos sup, izq
    pushMatrix();
    translate(50, 50);
    rotate(a);
    fill(237,208,44);
    noStroke();
    ellipse(0, 0, 15, 15);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(65, 90);
    rotate(a);
    fill(226,128,198);
    noStroke();
    ellipse(0, 0, 28, 28);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    //externos sup, der
    pushMatrix();
    translate(231, 140);
    rotate(a);
    fill(35,72,54,60);
    noStroke();
    ellipse(0, 0, 45, 45);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(231, 140);
    rotate(a);
    fill(0,0,0);
    noStroke();
    ellipse(0, 0, 11, 11);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(330, 70);
    rotate(a);
    fill(255,0,0);
    noStroke();
    ellipse(0, 0, 10, 10);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(240, 95);
    rotate(a);
    fill(249,227,120);
    noStroke();
    ellipse(0, 0, 25, 25);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(300, 110);
    rotate(a);
    fill(216,153,35);
    noStroke();
    ellipse(0, 0, 15, 15);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    //externos b. der
    pushMatrix();
    translate(330, 210);
    rotate(a);
    fill(14,35,148);
    noStroke();
    ellipse(0, 0, 13, 13);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(310, 300);
    rotate(a);
    fill(216,207,225,30);
    noStroke();
    ellipse(0, 0, 50, 50);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(310, 280);
    rotate(a);
    fill(255,0,0);
    noStroke();
    ellipse(0, 0, 5, 5);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(318, 280);
    rotate(a);
    fill(0,0,0);
    noStroke();
    ellipse(0, 0, 3, 3);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(298, 295);
    rotate(a);
    fill(122,218,240);
    noStroke();
    ellipse(0, 0, 15, 15);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(283, 290);
    rotate(a);
    fill(210,184,107,20);
    noStroke();
    ellipse(0, 0, 15, 15);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(338, 300);
    rotate(a);
    fill(210,184,107);
    noStroke();
    ellipse(0, 0, 8, 8);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(300, 335);
    rotate(a);
    fill(246,233,76);
    noStroke();
    ellipse(0, 0, 8, 8);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(293, 360);
    rotate(a);
    fill(255,0,0);
    noStroke();
    ellipse(0, 0, 11, 11);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(330, 370);
    rotate(a);
    fill(32,145,206);
    noStroke();
    ellipse(0, 0, 9, 9);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(170, 310);
    rotate(a);
    fill(214,132,20);
    noStroke();
    ellipse(0, 0, 13, 13);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    //externos b, izq
    pushMatrix();
    translate(140, 265);
    rotate(a);
    fill(0,0,0);
    noStroke();
    ellipse(0, 0, 3, 3);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(115, 251);
    rotate(a);
    fill(255,0,0);
    noStroke();
    ellipse(0, 0, 4, 4);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(87, 220);
    rotate(a);
    fill(0,0,0);
    noStroke();
    ellipse(0, 0, 5, 5);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(60, 245);
    rotate(a);
    fill(191,186,324);
    noStroke();
    ellipse(0, 0, 37, 37);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(65, 235);
    rotate(a);
    fill(0,0,0);
    noStroke();
    ellipse(0, 0, 13, 13);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(100, 255);
    rotate(a);
    fill(236,170,62);
    noStroke();
    ellipse(0, 0, 20, 20);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(113, 265);
    rotate(a);
    fill(242,70,23,60);
    noStroke();
    ellipse(0, 0, 20, 20);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(100, 280);
    rotate(a);
    fill(255,0,0);
    noStroke();
    ellipse(0, 0, 20, 20);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(90, 278);
    rotate(a);
    fill(243,209,69,80);
    noStroke();
    ellipse(0, 0, 20, 20);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(110, 280);
    rotate(a);
    fill(240,90,54,70);
    noStroke();
    ellipse(0, 0, 20, 20);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(70, 310);
    rotate(a);
    fill(240,136,225);
    noStroke();
    ellipse(0, 0, 8, 8);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(90, 330);
    rotate(a);
    fill(64,145,194);
    noStroke();
    ellipse(0, 0, 15, 15);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    pushMatrix();
    translate(65, 335);
    rotate(a);
    fill(60,62,63);
    noStroke();
    ellipse(0, 0, 8, 8);
    // Let's add a line so we can see the rotation
    line(0, 0, r, 0);
    popMatrix();
    
    
    
    
  }

  // Here's our function that adds the particle to the Box2D world
  void makeBody(float x, float y, float r) {
    // Define a body
    BodyDef bd = new BodyDef();
    // Set its position
    bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    body = box2d.createBody(bd);

    // Make the body's shape a circle
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.01;
    fd.restitution = 0.3;

    // Attach fixture to body
    body.createFixture(fd);

    body.setAngularVelocity(random(-10, 10));
    
  }
}