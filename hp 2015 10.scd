/*
Eduardo H Obieta
Hackpact 10 2015 - reinterpretación ...
a �tlalla -hdEucydoctua ��he�N z  leona
*/

s.boot;
a=thisProcess.nowExecutingPath.dirname;
a=a+"/canto_de_la_huida.sc";
b=a.replace(" /c","/c");
b=b.asString;
d=FileReader.read(b,true,true,delimiter:" ").postcs;
d=d.collectAs({ |e| e.asString}, Array).postcs;

(
Tdef(\sinquehacer, {
	50.do{
		var indice, subindice;
			indice = Array.fill(d.size, {arg i; i+1});
			t=d[indice.choose].asString;
			subindice = Array.fill(t.size, {arg j; j+1});
			if(u!=" ",{u=t.scramble});
		u.postln;
		u.asString.speak;
		5.wait;
	};
}).play
)

/*
edaao oaujlb an]donnai a�c�l ha ou[nnb r
 h ncoeouog eee.da[i]ardnda  a a  aluaqtlrs mn
ocos]vgo r[ r eao noeoddamamnh,u  ontese
voice 0 already speaking
oc[�s]eai�v nv �aoA ,lnvre  r�
 o eudeo to c �oaa]e urqf [aauun   lzq rll!�nsesecn rcde
Recording Stopped: nil
localhost
Tdef('sinquehacer')
?er�c ra orv n�l ves]rtibelaavaisr  io[ ov a
oihda  l  [toe rdrm]tiaou. ico cn j
]Szorv esle upeae c on� �[m
et rs voA]ce i ns[ esru nuaedi �q moee�cv
e sme gnuildo. t[aad  e ]lno
Tdef('sinquehacer')
[a?a]fde ldd eoi csm  cilno
 Sc[ reeznuv��ao]pel  msoe
a l eugrP��l]in eoLM [itde l
boelo� s[os]oe smmr orphsS  b�
hd VDoei, a d ,dO[]ar
Tdef('sinquehacer')
a  ua]otehdiadnC [l
erugrrb [ete?rld�sba  a � oe  iAremoas]oic
Sro�r o[s]emmsls   sooe �hbpob
roiA]r qe   eel�deau e�as?ru smmt[ac
na a]di[no  o ecv;enH
Tdef('sinquehacer')
ot elohe islo?l araqme ]yve   e nes[ sesub
t�etuein? a fdeedavsdeu d ]nlr lot n yutrm�a [ e
cs i�rqi aesrPud a �]oi�cnn�n r[oo ��b
[do�m. ssia e nnneicdcuame qeéu ir eo] � t nidsid
el ]o [ih  aundd taaC
D, dhdO� eao[a�i dv,  r]
[l  ]i eaotuahCa  dnd
tvs vaoesn ic]a[l?aoa veirr�avr ire �o blr
n [ dneo d!cs    qleotaorlerzlea�qncuou rc�  ua ]sfe ea u
ad .al esMva icca [neur]irn mrt
voice 0 already speaking
s r[  qqu eeo]aec�imt Na�d ovaseuhoy  oni
  eunse d.o mn[]et
eimaac ]dfd ?cn [diloo l es
?e� em��Q�dur  é� �[]s
oonln�rl]  ajdaanaao a[iob  uan �eubdh nc
][oielsan A �ae� vvr� on,c�rv
sd ua e�c oaa  iho[u  to�n eorqyseie]Nvmq
af  eojrl],[m es oP oi
nil
i]prul ![ ísgO ha�us n qphe� edi�aqle�ac o�b�
v l �� � l  evyd?ioa rq[mCd ahuleotn] e�aai ge
adOo,ih� dr [D]� vd e ,a
voice 0 already speaking
[vai]�,Oaero hd �d  ,dD
eutotdoya  eolyu ] eeyp s  rio  [ssaDs
 ai l[rv�n cgp�ai vrae ]ao.r
u]td  ojoam. d eh o nrcrit il[ ocia
a�sctrquAedre ] mse a� uraeil ?o[em
senaM V lsrr�i e[deC]�al  osor
hv seia damo e,ron  esadicpl[  e]d
ta �ed o]�l� vilearo[a �Cq ? du nig lmv heey a
isfi]eclad? [mdoa ndloe c
dco; no e v ne [anHia]
nnmtr? [u td�eu uv  e etlore iea atsa�ldyfndd e]
a�arqrlSiza ua �ve, n  ]t�ob,su� rlo[ ee.
 asNio.mqo]n �ta oge,u ��lio p rn c r[ood�o m
m ]ooseleh� �s o[ srmbooS pbrs
voice 0 already speaking
uogalondaiocnq  r ae ae earnlted[]aa u  dsm .h
du�o a acnbia  naehad nonaljnu[bora] � ol
do Drvd  a Oe�[a,]� i,hd
o nl en eg]iatd .leaosm[du
reme fder?tyoet un ead� � ] vtadlut ei ua[dls nn
naae [u.ie ollodted n  m g]s
 ou[e�se u imeqA�t ]asemldcr  raea?r
e a   qNa�meviu]dtqcao�niye orhs  s[oe uo
]oea�o ha ue sqimac vd eno�yore[ N ustq i
ndl emo fdla[ ads]?cco i ie
ose�sh[rbS oob p]m  os� roslme
 dq�]oPcbe� riuana  ir�o�[i� n scrsn�o
ai  elcav ia c].rMnnrr samed[u t
av in  oo� ]vtreelo viiaslvcar[�bra  es?a rr
*/