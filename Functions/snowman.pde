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
var yellow = (255,255,0);

var drawHappyEmotion = function(faceX, faceY, faceSize){
    // draw Eyes
    fill(0, 0, 0);
    ellipse(faceX - faceSize*0.22, faceY - faceSize*0.1, faceSize*0.12,faceSize*0.12);
    ellipse(faceX + faceSize*0.19, faceY - faceSize*0.1, faceSize*0.12,faceSize*0.12);
    // draw mouth
    fill(0, 0, 0);
    ellipse(faceX,faceY+faceSize*0.17, faceSize*0.65, faceSize*0.43);
    fill(255,255,0);
    ellipse(faceX+0.01*faceSize,faceY+0.07*faceSize,faceSize*0.79,faceSize*0.25);
};

var drawSadEmotion = function(faceX, faceY, faceSize){
    // draw Eyes
    fill(0, 0, 0);
    ellipse(faceX - faceSize*0.24, faceY - faceSize*0.1, faceSize*0.12,faceSize*0.12);
    ellipse(faceX + faceSize*0.23, faceY - faceSize*0.1, faceSize*0.12,faceSize*0.12);
    // draw mouth
    fill(0, 0, 0);
    ellipse(faceX+faceSize*0.01,faceY+0.27*faceSize,faceSize*0.65,faceSize*0.29);
    fill(255,255,0);
    ellipse(faceX+faceSize*0.02,faceY+0.34*faceSize,faceSize*0.64,faceSize*0.19);
};

var drawAngryEmotion = function(faceX, faceY, faceSize){
    // draw Eyes
    fill(0, 0, 0);
    ellipse(faceX - faceSize*0.22, faceY - faceSize*0.08, faceSize*0.12,faceSize*0.12);
    ellipse(faceX + faceSize*0.19, faceY - faceSize*0.08, faceSize*0.12,faceSize*0.12);
    // draw mouth
    fill(0, 0, 0);
    stroke(0,0,0);
    strokeWeight(faceSize*0.07);
    line(faceX-0.08*faceSize, faceY-0.18*faceSize, faceX-0.24*faceSize, faceY-0.32*faceSize);
    line(faceX+0.07*faceSize, faceY-0.18*faceSize, faceX+0.22*faceSize, faceY-0.32*faceSize);
    fill(0,0,0);
    ellipse(faceX, faceY+0.2*faceSize, faceSize*0.65, faceSize*0.29);
};

var drawBoredEmotion = function(faceX, faceY, faceSize){
    // draw Eyes
    fill(0, 0, 0);
    ellipse(faceX-faceSize*0.24,faceY-faceSize*0.11,faceSize*0.12,faceSize*0.12);
    ellipse(faceX+faceSize*0.23,faceY-faceSize*0.11,faceSize*0.12,faceSize*0.12);
    // draw mouth
    stroke(0,0,0);
    line(faceX-faceSize*0.25, faceY+faceSize*0.25,faceX+faceSize*0.26, faceY+faceSize*0.25);
};

var timer = 0;
var drawFace = function(faceX, faceY, faceSize){
    noStroke();
    // drawFace
    fill(255,255,0);
    ellipse(faceX, faceY, faceSize, faceSize);
    // draw emotions
    //fill(0, 0, 0);
    //ellipse(faceX,faceY+faceSize*0.17, faceSize*0.65, faceSize*0.43);
    //fill(255,255,0);
    //ellipse(faceX+0.01*faceSize,faceY+0.07*faceSize,faceSize*0.79,faceSize*0.25);
    if(timer < 30){
        drawHappyEmotion(faceX, faceY, faceSize);
    }else if(timer < 60){
        drawSadEmotion(faceX, faceY, faceSize);
    }else if(timer < 90){
        drawAngryEmotion(faceX, faceY, faceSize);
    }else if(timer < 120){
        drawBoredEmotion(faceX, faceY, faceSize);
    }else if(timer >= 120){
        timer = 0;
    }
    timer++;
};



draw = function() {
    background(225,225,225);
    drawFace(100,100,100);
    drawFace(200,200,150);

};
