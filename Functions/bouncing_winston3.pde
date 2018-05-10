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
var speed = 10;
var direction = 1;

draw = function() {
    background(225,225,225);
    speed = y/10;

    //fill(66,66,66);
    //ellipse(200,y,50,50);
    Winston(200,y,50);

    y = y + speed*direction;
    if(y>400-50/2 && direction>0){
        direction = -1;
    }else if(y<50/2 && direction<0){
        direction = 1;
    }
};
