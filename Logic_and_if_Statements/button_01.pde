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


var buttonX = 100;
var buttonY = 150;
var buttonW = 200;
var buttonH = 100;

var drawButton = function(){
    // The button box
    if(buttonIsPressed()){
        fill(255, 0, 68); // start color
    }else{
        fill(0, 255, 68);
    }
    rect(buttonX, buttonY, buttonW, buttonH);  // the button

    // The button text
    if(buttonIsPressed()){
        fill(0,255,68);
    }else{
        fill(255,0,68);
    }
    textSize(30);
    text("Press me!", buttonX+35, buttonY+buttonH-35);
};
var buttonIsPressed = function(){
    if(mousePressed 
        && mouseY<buttonY+buttonH && mouseY>buttonY 
        && mouseX>buttonX && mouseX<buttonX+buttonW){
        return true;
    }else{
        return false;
    }
};

var speedX = 2;
var speedY = 2;

var updateButton = function(){
    if(buttonX+buttonW>400){
        speedX = -1;
    }
    if(buttonX<0){
        speedX = 1;
    }
    if(buttonY+buttonH>400){
        speedY = -1;
    }
    if(buttonY<0){
        speedY = 1;
    }
    buttonX += speedX;
    buttonY += speedY;

};


draw = function() {
    background(225,225,225);
    updateButton();
    drawButton();
};
