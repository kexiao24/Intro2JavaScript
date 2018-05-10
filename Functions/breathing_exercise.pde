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

var textColor = 1;
var phaseTime = 30;
var textColor_speed = 0.5;
var breath_size = 0;
var msg = "Intro";

var drawMsg = function(msg){
    if(msg==="Intro"){
        var msg_X = 80;
        var msg_content = "Bring awareness to your breath";
    }else if(msg==="Breath In"){
        var msg_X = 160;
        var msg_content = "Breath in";
    }else if(msg==="Breath Out"){
        var msg_X = 155;
        var msg_content = "Breath out";
    }
    var msg_Y = 350;
    fill(240-textColor*240/phaseTime,240-textColor*(240-191)/phaseTime,255);
    text(msg_content, msg_X, msg_Y);
}


draw = function() {
    // deep sky blue
    background(0,191,255);
    //text(msg, msg_X, msg_Y);
    drawMsg(msg);
    if(textColor<1){
        textColor_speed = -textColor_speed;
        msg = "Breath Out";
    }else if(textColor>=phaseTime){
        textColor_speed = -textColor_speed;
        msg = "Breath In";
    }
    textColor += textColor_speed;
    // light sky blue
    fill(135,206,250);
    ellipse(200,200,200,200)

    fill(247,247,247);
    breath_size = textColor*190/30
    ellipse(200,200,breath_size,breath_size)

};
