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

var Paddle = function(x, y, width, length){
    fill(0,0,0);
    rect(x-width/2, y-length/2, width, length)
}

var x = 25;
var y = 25;
var speedX = 5;
var speedY = 5;
var directionX = 1;
var directionY = 1;

var paddle_length = 100;
var paddle_width = 24;
var paddleY = 150;
var GameOn = true;

var touchPaddle = function(){
    var touchX = false;
    var touchY_up = false;
    var touchY_down = false;
    var touchY_center = false;
    if(x>400-50 && x<400+50){
        touchX = true; 
    }
    if(y>=paddleY && y<=paddleY+100){
        touchY_center = true;
    }else if(y<=paddleY && y>=paddleY-25){
        touchY_up = true;
    }else if(y>=paddleY+100 && y<=paddleY+125){
        touchY_down = true;
    }
    if(touchX){
        if(touchY_center){
            directionX = -1;
            speedX += 2;
            speedY += 2;
        }else if(touchY_up){
            directionX = -1;
            directionY = -1;
            speedY += 2;
        }else if(touchY_down){
            directionX = -1;
            directionY = 1;
            speedY += 2;
        }
    }
}

draw = function() {
    background(225,225,225);
    //speedY = y/10;
    paddleY = mouseY - 50;
    println("Y is "+y+" | Direction_Y is "+directionY+" | Speed_Y is "+speedY);

    if(GameOn){
        Paddle(400-paddle_width/2, mouseY, paddle_width, paddle_length);
        //rect(375,paddleY,25,100);

    
        //fill(66,66,66);
        //ellipse(x,y,50,50);
        Winston(x,y,50);

        x = x + speedX*directionX;
        if(x>400){
            GameOn = false;
        }
        y = y + speedY*directionY;


        if(y>400-50/2 && directionY>0){
            directionY = -1;
            //speedY = random(2,10);
            speedY = abs(y/random(20,40));
        }else if(y<50/2 && directionY<0){
            directionY = 1;
            speedY = random(2,5);
        }
        touchPaddle();

        /*
        if(x>400-50 && x<400-25 && directionX>0){
            if(y>=paddleY && y<=paddleY+100){
                directionX = -1;
            }
        }else 
        */
        if(x<50/2 && directionX<0){
            directionX = 1;
            speedX = random(5,15);
        }
    }else{
        textSize(50);
        text("Game Over!!!", 40, 200);
        textSize(20);
        text("Click for restart!", 50, 225);
        if(mousePressed){
            GameOn = true;
            y = 25;
            x = 25;
        }
    }
};
