/*
Eduardo H Obieta
Hackpact 09 2015
Estoy triste - Nezahualcóyotl
*/

/*
Continuando con la exploración al leer un documento externo, hago este nuevo ejercicio, ahora un poema de Nezahualcóyotl: "Estoy Triste"

Utilizando la versión en español y la versión en náhuatl; 6 párrafos son analizados cono strings y convertidos a ascii, utilizados para modificar argumentos del UGen, que partió de la imitación de un silbato azteca (silvato que imita el sonido del águila); aire, tonos, fuerza del silbido, entre otros.
*/


s.boot;
a=thisProcess.nowExecutingPath.dirname;
a=a+"/estoy_triste.sc";
b=a.replace(" /e","/e");
b=b.asString;
d=FileReader.read(b,true,true).postcs;
d=d.collectAs({ |e| e.asString.replace("\n"," ")}, Array).postcs;
d.size;
d=d.collectAs({ |e| e.asString.ascii}, Array).postcs;
d.size;

(
SynthDef(\Nezahualcoyotl,
	{|freq = 380, pre = 5720, ang = 20, sil = 1.2, man = 6, durDur = 0.2|
		var gen, env, delC, delT, fed, inloop;
		delC = Server.default.options.blockSize / SampleRate.ir();
		delT = freq.reciprocal - delC;
		fed = LeakDC.ar(LocalIn.ar(1));
		env = EnvGen.ar(Env.perc(0.2, durDur,0.6),doneAction:2);
		gen = ((LPF.ar(WhiteNoise.ar(0.5), freq * man) * env) + (env + (fed * sil)));
		inloop = LPF.ar(HPF.ar(gen, ang + freq), pre + freq);
		LocalOut.ar(DelayC.ar(inloop, 1, delT.lag(2)).distort);
		Out.ar(0, Limiter.ar(inloop)*env.dup);
	}
).add
)

Synth(\Nezahualcoyotl);

//duracion
Tdef(\n, Prand(d[0].normalize(0.1,1.2).postln,inf));
d[0].size;
s.prepareForRecord;
s.record;

(
Pset(\instrument, \Nezahualcoyotl,
	Pbind(
		\dur, Tdef(\n),
		\freq, Pseq(d[0].normalize(200,800),inf),
		\durDur, Pseq(d[2].normalize(0.5,2),inf),
		\pre, Pseq(d[3].normalize(4000,6000),inf),
		\ang, Pseq(d[4].normalize(18,22),inf),
		\sil, Pseq(d[5].normalize(1.1,1.3),inf),
		\man, Pseq(d[0].normalize(5,7),inf)
	)
).play
)
s.stopRecording;