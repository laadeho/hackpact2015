/*
Eduardo H Obieta
Hackpact 14 2015
*/
s.boot;

(
SynthDef(\hp14,
	{ | frec = 20, frec2 = 440, amp = 0.7, gate = 1|
		var sin, env;
		sin = GVerb.ar(FreeVerb.ar(SyncSaw.ar(frec,frec2, amp),0.7,0.7,0.2),8,1,0.4,0.2);
		env = EnvGen.ar(Env.perc(0.02,0.3,1), gate, doneAction:2);
		Out.ar(0,Pan2.ar(sin*env,0));
	}
).add
)
(
SynthDef(\hp14b,
	{ | frec = 80, amp = 0.8, gate = 1|
		var sin, env;
		sin = SinOsc.ar(frec, 0, amp)*Saw.ar(frec/2,amp);
		env = EnvGen.ar(Env.perc(0.3,2,1), gate, doneAction:2);
		Out.ar(0,Pan2.ar(sin*env,0));
	}
).add
)

Synth(\hp14);
Synth(\hp14b);
s.prepareForRecord;
s.record;
(
var nota, tiempo;
tiempo = Routine({
	inf.do({
		[1/4,1/8,1/6,1/16].choose.yield;
	})
});
nota = Routine({
	inf.do({
		70.yield;
		72.yield;
		74.yield;
		75.yield;
		77.yield;
		79.yield;
		81.yield;
		if (0.6.coin, {
			58.yield;
			60.yield;
			62.yield;
			63.yield
		});
		if (0.7.coin, {
			[82,84,86,87].choose.yield;
		})
	})
});

Routine{
	inf.do({
		Synth(\hp14, [\frec2, nota.next.midicps, \frec, nota.next*0.25, \amp, 0.2+tiempo.next]);
		tiempo.next.wait;
	})
}.play;

Routine{
	inf.do({
		Synth(\hp14b, [\frec, nota.next, \amp, 0.7+tiempo.next]);
		tiempo*4.next.wait;
	})
}.play
);

s.stopRecording;