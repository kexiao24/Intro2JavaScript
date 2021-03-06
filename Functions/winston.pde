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
var faceSize = 250;
var faceSpeed = -1;

var updateFaceSize = function(){
    faceSize += faceSpeed;
    if(faceSize < 50){
        faceSpeed = 1;;
    }
    if(faceSize > 250){
        faceSpeed = -1;
    }
};

var drawWinston = function(faceSize, x, y){
    var mouthSize = 1/2 * faceSize;
    var eyeSize = 2/15 * faceSize;
    // draw winston's face
    fill(255,255,0);
    ellipse(x, y, faceSize, faceSize);
    // draw winston's eyes
    fill(46,46,41);
    //ellipse(x - 1/6*faceSize, y-1/6*faceSize, eyeSize, eyeSize);
    ellipse(0.8*x, 0.8*y, 0.13*faceSize, 0.13*faceSize);
    ellipse(x + 1/3*faceSize, y-1/5*faceSize, eyeSize, eyeSize);
    // draw winston's mouth
    fill(252, 65, 65);
    ellipse(x + 1/6*faceSize, y+2/15*faceSize, mouthSize, mouthSize);

};

draw = function() {
    background(225,225,225);
    updateFaceSize();
    //drawWinston(faceSize, mouseX, mouseY);
    drawWinston(faceSize, 140, 140);
    drawWinston(300-faceSize, 260, 260);
    drawWinston(70, 50, 350);
    drawWinston(70, 350, 50);

};
