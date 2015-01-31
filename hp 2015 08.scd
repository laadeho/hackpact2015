/*
Eduardo H Obieta
Hackpact 08 2015
Lorem ipsum
*/

/*
¿Cómo suenan dos párrafos de Lorem ipsum?

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent posuere velit nec ligula viverra eleifend. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed at magna congue, mollis enim nec, maximus mauris. In consectetur lectus in lacus porta ullamcorper. Vestibulum vel iaculis er..............
(ver lorem.sc...)
*/

(
a=thisProcess.nowExecutingPath.dirname;
a=a+"/lorem.sc";
b=a.replace(" /l","/l");
b=b.asString;
d=FileReader.read(b);
d=d.collectAs({ |e| e.asString.ascii}, Array).postcs;
)
d.size;
d[0].size;
s.prepareForRecord;
s.record;
(
SynthDef(\loremIpsum,
	{ |freq = 262, amp = 0.1, durDur = 1, pan =0 |
		var sig, env;
		sig = SyncSaw.ar (freq, freq*0.7, amp)+Saw.ar(freq,amp);
		env = EnvGen.ar(Env.perc(0.0015, durDur, 0.2), doneAction:2);
		sig = Pan2.ar(sig*env, pan);
		Out.ar(0, sig);
	}).add
	);
Synth(\loremIpsum);
(
var notas;
notas = Routine({
		inf.do({
		d[0].choose.yield;
		d[1].choose.yield;
		d[2].choose.yield;
		})
});
r=Routine({
	inf.do({
		Synth(
		\loremIpsum,
		[ \freq, notas.next.postln.midicps, \amp, 0.7]
		);
		(1/8).yield
	})
}).play
)

r.stop;
s.stopRecording;