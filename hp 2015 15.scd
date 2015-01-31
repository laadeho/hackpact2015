/*
Eduardo H Obieta
Hackpact 15 2015
*/
s.boot;

(
var w = Window("Hackpact 15-15¡¡", Rect(500, 0, 500, 800)).front;
var r= 15;
var posX=250;
var posY=400;
var velX = 1;
var velY=1;
w.drawFunc = { |v|
    Pen.fillColor = Color.blue;
    Pen.strokeColor = Color.red;
    Pen.moveTo(150@150);
    Pen.arcTo(200@150, 200@225, r);
    Pen.arcTo(200@225, 100@225, r);
    Pen.arcTo(100@225, 100@150, r);
    Pen.arcTo(100@150, 150@150, r);
    Pen.lineTo(150@150);
    Pen.fillStroke;
};
(
r=Routine({
	inf.do({
		0.5.wait;
		posX=posX+velX;
		posY=posY+velY;
		postln("x "+posX+" y "+posY);
	})
}).play
)
)