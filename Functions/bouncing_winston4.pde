setup = function(){
    size(400,400);
    //background(255,255,255);
    //noStroke();
    //smooth();
    //noLoop();
    background(255,0,0);
    frameRate(30);
    PFont fontA = loadFont("courier");
    textFont(fontA, 14);  

}

noStroke();

var Winston = function(x, y, faceSize){
    var mouthSize = 1/2 * faceSize;
    var eyeSize = 2/15 * faceSize;
    // draw winston's face
    fill(255,255,0);
    ellipse(x, y, faceSize, faceSize);
    // draw winston's eyes
    fill(46,46,41);
    ellipse(x - 1/6*faceSize, y-1/6*faceSize, eyeSize, eyeSize);
    ellipse(x + 1/3*faceSize, y-1/5*faceSize, eyeSize, eyeSize);
    // draw winston's mouth
    fill(252, 65, 65);
    ellipse(x + 1/6*faceSize, y+2/15*faceSize, mouthSize, mouthSize);

};

var y = 25;
var speedY = 10;
var directionY = 1;
var x = 25;
var speedX = 10;
var directionX = 1;

draw = function() {
    background(225,225,225);
    speedY = y/10;

    fill(66,66,66);
    ellipse(x,y,50,50);

    y = y + speedY*directionY;
    if(y>400-50/2 && directionY>0){
        directionY = -1;
    }else if(y<50/2 && directionY<0){
        directionY = 1;
    }

    x = x + speedX*directionX;
    if(x>400-50/2 && directionX>0){
        directionX = -1;
    }else if(x<50/2 && directionX<0){
        directionX = 1;
    }
};
