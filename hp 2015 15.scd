/*
Eduardo H Obieta
Hackpact 15 2015
... AL FIN el número 15¡¡
*/

(
s=Server.default;
//s.options.device ="MME";
//s.options.device = "ASIO";
s.options.device_("ASIO : ASIO4ALL v2");
s.reboot
)

a=thisProcess.nowExecutingPath.dirname;
a=a+"/canto_de_primavera.sc";
b=a.replace(" /c","/c");
b=b.asString;
d=FileReader.read(b,true,true,delimiter:" ");
d.size

(
e=[];
d.size.do{|v=0|
	e=e.addAll(d[v+1]);
	v=v+1;
	v.post;
	e.postcs;
}
)

(
f="";
e.size.do(
	{|v=0|
		f=f + e[v].asString;
		v=v+1;
	}
)
)

f=f.replace(", "," ");
f=f.replace(".","");
g=f.split($ );

(
g.size.do({|v=0|
	if(g[v]=="",{
		g.removeAt(v);
		}
	);
	v=v+1;
	}
)
)
s.prepareForRecord;
s.record;
~font= Font("Helvetica", 50);
(
var width= 1920;
var height= 1000;
var win= Window("HACKPACT 15", Rect(0, 0, width, height), false);
var usr= UserView(win, Rect(0, 0, width, height));
var syn= {|freq= 400, pan= 0| Pan2.ar(SyncSaw.ar(freq, freq*LFNoise0.kr(20,0.7), 0.2), pan)}.play;
var syn2= {|freq= 60, pan= 0| Pan2.ar(Pulse.ar(freq, 0.2, 0.7), pan)}.play;
var syn3= {|freq= 460, pan= 0| Pan2.ar(Gendy3.ar(0.8,1,0.8,0.75,freq, 0.5, 0.7,10,mul:0.7), pan)}.play;
var syn4= {|freq= 4, pan= 0| Pan2.ar(SinOsc.ar(80,0,0.75)*Pulse.ar(freq,0.35,0.6), pan)}.play;
var syn5= {|freq= 8000, pan= 0| Pan2.ar(BPF.ar(WhiteNoise.ar(0.7),freq, 0.25, 0.7), pan)}.play;
var syn6= {|freq= 500, pan= 0| Pan2.ar(LFNoise2.ar(freq,0.75), pan)}.play;
var syn7= {|freq= 500, pan= 0| Pan2.ar(Saw.ar(freq,0.35), pan)}.play;
var syn8= {|freq= 500, pan= 0| Pan2.ar(LFPar.ar(LFPar.kr(50,0,freq,800),0,0.3), pan)}.play;
var syn9= {|freq= 100, freq2= 600, pan= 0| Pan2.ar(SyncSaw.ar(freq,freq2,0.3), pan)}.play;
usr.background= Color.black;
win.front;
~speed= 3;
~updown= 0.5;
CmdPeriod.doOnce({win.close});
usr.drawFunc= {
	var x= usr.frame*~speed%width;
	var x2= usr.frame*~speed*5%width;
	var x22=x2.linlin(0,width, width,0);
	var x3= usr.frame*~speed*80%width;
	var x4= usr.frame*~speed*2%width;
	var x5= usr.frame*~speed*0.5%width;
	var x6= usr.frame*~speed*16%width;
	var x7= usr.frame*~speed*0.75%width;
	var x8= usr.frame*~speed*4%width;
	var y= height*~updown.value(usr.frame);
	syn.set(\freq, y.linexp(0, height, 400, 200), \pan, x.linlin(0, width, -1, 1));
	syn2.set(\freq, y.linexp(0, height, 60, 40), \pan, x22.linlin(0, width, 1, -1));
	syn3.set(\freq, y.linexp(0, height, 460, 240), \pan, x3.linlin(0, width, -1, 1));
	syn4.set(\freq, y.linexp(0, height, 4, 6), \pan, x4.linlin(0, width, 1, -1));
	syn5.set(\freq, y.linexp(0, height, 8000, 6000), \pan, x2.linlin(0, width, -1, 1));
	syn6.set(\freq, y.linexp(0, height, 200,1800), \pan, x5.linlin(0, width, 1, -1));
	syn7.set(\freq, y.linexp(0, height, 100,12800), \pan, x6.linlin(0, width, -1, 1));
	syn8.set(\freq, y.linexp(0, height, 100,600), \pan, x7.linlin(0, width, 1, -1));
	syn9.set(\freq2, y.linexp(0, height, 100,800), \pan, x8.linlin(0, width, -1, 1));
	Pen.font= ~font;
	Pen.fillColor= Color.white;
	Pen.stringAtPoint(f, Point(x,y));
	if(usr.frame%7==0){f=g[(0..g.size)].scramble.choose;};
	Pen.fillColor= Color.gray(0.2);
	Pen.stringAtPoint(i, Point(x3,y+100));
	if(usr.frame%20==0){i=g[(0..g.size)].scramble.choose;};
	Pen.fillColor= Color.gray(0.4);
	Pen.stringAtPoint(j, Point(x4,y+200));
	if(usr.frame%5==0){j=g[(0..g.size)].scramble.choose;};
	Pen.fillColor= Color.gray(0.6);
	Pen.stringAtPoint(k, Point(x2,y+300));
	if(usr.frame%18==0){k=g[(0..g.size)].scramble.choose;};
	Pen.fillColor= Color.gray(0.8);
	Pen.stringAtPoint(l, Point(x5,y+400));
	if(usr.frame%35==0){l=g[(0..g.size)].scramble.choose;};
	Pen.fillColor= Color.gray(0.2);
	Pen.stringAtPoint(h, Point(x22,y-100+(-20..20).choose));
	if(usr.frame%6==0){h=g[(0..g.size)].scramble.choose;};
	Pen.fillColor= Color.gray(0.4);
	Pen.stringAtPoint(m, Point(x6,y-200));
	if(usr.frame%30==0){m=g[(0..g.size)].scramble.choose;};
	Pen.fillColor= Color.gray(0.6);
	Pen.stringAtPoint(n, Point(x7,y-300));
	if(usr.frame%12==0){n=g[(0..g.size)].scramble.choose;};
	Pen.fillColor= Color.gray(0.8);
	Pen.stringAtPoint(o, Point(x8,y-400));
	if(usr.frame%2==0){o=g[(0..g.size)].scramble.choose;};

};
usr.animate= true;
)
s.stopRecording;