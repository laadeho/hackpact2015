/*
Eduardo H Obieta
Hackpact 12 2015
G L I T C H C O L L I D E R¡¡¡¡
*/
//based on rukano's code

s.boot;
a=thisProcess.nowExecutingPath.dirname;
a=a+"/hp12.jpg";
b=a.replace(" /h","/h");
File.open(b,"rb");

(
Tdef(\hp12, {
	50.do{|g|
		0.01.wait;
		c=a.replace(" /hp12.jpg","/GlitchCollider/hp12_glitched%.jpg").format(g);
		~glitcheado;
		~paGlitch = File.open(b,"rb");
		~fk=~paGlitch.length.collect{ ~paGlitch.getInt8 };
		Array.fill(20, {arg i; 15*(i+5)}).choose.do{
			~fkd=rrand(100, ~fk.size-2);
			~fk[~fkd]=256.rand;
		};
		~sy={Out.ar(0,Gendy2.ar(initCPs:[1,2,3,4,5,6,7].choose)*EnvGen.ar(Env.perc(0.01,0.85,1,-2),doneAction:2))}.play;
		~glitcheado=File.new(c,"wb+");
		~glitcheado.write(~fk.as(Int8Array));
		~glitcheado.close;
		"Va Glitcheado % ".format(g).postln
	};
}).play
)

