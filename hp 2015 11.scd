/*
Eduardo H Obieta
Hackpact 11 2015
S P A M C O L L I D E R¡¡¡¡
*/

s.boot;
u=PathName.new("/Applications/");
v=u.folders;
j = "/Applications/*".pathMatch.sort.collect {|file| file;};
(
Tdef(\spam,{50.do{
	k=j[Array.series(j.size,0,1)].choose;
	k=k.asString.replace(".app/",".app");
	unixCmd("open -a "+k.asTextArchive.postln);
	{Pan2.ar(Blip.ar(40,150,0.5)*EnvGen.ar(Env.perc(0.02,0.4,1,-2),doneAction:2))}.play;
	1.wait;
}
}).play
)