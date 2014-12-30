INTERJECT_COPY_TRANS2 C#Q01001 4 ACC#Q010014
== ACBreJ IF ~InParty("ACBre")InMyArea("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Pfui Deibel! Ich bin in so manchem Stollen herumgekrochen und habe manche Widerlichkeit gesehen, <CHARNAME>. Aber *das* setzt allem die Krone auf.~
END

INTERJECT_COPY_TRANS2 C#Q01001 42 ACC#Q0100141
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Und starrt Löcher in die Luft, wie es nur ein närrischer <PRO_RACE> kann. Pah.~
END

INTERJECT_COPY_TRANS2 C#Q01003 1 ACC#Q010031
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Ihr seid für das Abenteurerleben wie geschaffen, <CHARNAME>. Keine Skrupel, in jedem Dreck herumzuwühlen.~
END

INTERJECT C#Q01004 6 ACC#Q010046
==ACBREJ IF ~InParty("ACBRE")See("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN
~Jetzt hab ich aber die Nase voll! Raus mit der Sprache, oder ich schneide Euch Eure Antwort mit der Axt aus den Rippen!~
END
IF ~~ THEN EXTERN C#Q01004 8

INTERJECT_COPY_TRANS2 C#Q03009 5 ACC#Q030095
==ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Ja, das ist er wohl... und er krabbelt auf mich zu.~ = ~Uhm... <CHARNAME>? Hilfe?~
==C#Q03010 IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Bart!~
==ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Aua! Das ist *mein* Bart! Nicht ziehen! Nicht! Aua!~
==C#Q03010 IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~*kräh*~
==ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Bei der Liebe Berronars, jetzt ist *Schluss*!~
==C#Q03010 IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Naaaah! *brüll*~
==C#Q03009 IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Warum bist du so klein?~
==ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Klein? Ich bin nicht...~
==C#Q03009 IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Und so dick?~
==ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Ich... Buzzurk! Ich bin nicht dick!~
==C#Q03010 IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~'Zurk! *kräh* 'Zurk! 'Zurk! 'Zurk! 'Zurk!~
==ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Hör sofort auf damit! Das ist ein böses Wort, das sagt man nicht!~
==C#Q03010 IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk! 'Zurk!~
==ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Bei allen Göttern, <CHARNAMEN>. Das nächste Mal suchen wir uns eine Drachenhöhle oder ein Betrachternest. Mir ist vollkommen egal, was für ein Ort das ist, so lange die Axt eines Zwergen dort noch gewürdigt wird.~
END

INTERJECT_COPY_TRANS C#Q04001 0 ACC#Q040010
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Verdammte Lindwurmbrut! Keine Sorge, den knöpf' ich mir vor!~
== C#Q04001 IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Hilfe!~
END

INTERJECT_COPY_TRANS2 C#Q04003 2 ACC#Q040032
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Das wird diesem Schnösel eine Lehre sein. Und wenn nicht, dann gibt es ein paar Nachhilfestunden in Sachen Benehmen auf Zwergenart.~
END

