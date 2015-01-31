/*
Eduardo H Obieta
Hackpact 13 2015
G L I T C H C O L L I D E R 3 D¡¡¡¡
*/
s.boot;
(
SynthDef(\hp13, { | out, gate = 0 |
var x;
x = EnvGen.kr(Env.perc(0.01,0.1,1), doneAction: 2) * BPF.ar(WhiteNoise.ar(0.7),3500,0.8,0.5);
Out.ar(out, x)
}).add;
)
(
Tdef(\hackpact13,
{
Synth(\hp13);
a=thisProcess.nowExecutingPath.dirname.postcln;
0.5.wait;
Synth(\hp13);
a=a+"/hackpact13.obj".postcln;
0.5.wait;
Synth(\hp13);
b=a.replace(" /h","/h").postcln;
Synth(\hp13);
0.5.wait;
b=b.asString.postcln;
Synth(\hp13);
0.5.wait;
d=FileReader.read(b,true,true).postcs;
Synth(\hp13);
0.5.wait;
c=b.replace(".obj","_glitched.obj".postcln);
Synth(\hp13);
0.5.wait;
(
o = File.new(c,"wb");
r=Routine{
d.size.do{arg count;
0.005.wait;
"fucking vertex".postcln;
Synth(\hp13);
if (d[count][0]=="v"&&0.3.coin,
{
d[count][1]=(d[count][1].asFloat)*Array.series(21,0.9,0.01).choose;
d[count][2]=(d[count][2].asFloat)*Array.series(21,0.9,0.01).choose;
d[count][3]=(d[count][3].asFloat)*Array.series(21,0.9,0.01).choose;
[count].post;
}, {
[count].post;" f ".post}
);
d[count] = d[count].asString;
d[count]=d[count].replace("[ "," ");
d[count]=d[count].replace("v,","v ");
d[count]=d[count].replace(", "," ");
d[count]=d[count].replace(" ]","");
d[count].post;
o.write(d[count].asString);
o.write($\n);
};
o.close;
}.play
);
}
).play
)