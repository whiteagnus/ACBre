APPEND ACBREJ
IF ~Global("ACVA#BOOK","LOCALS",1)~ THEN BEGIN VABOOK
SAY ~Und für so ein verdammtes Buch lassen wir uns quer über den Ozean schicken. Für ein verdammtes ZAUBERBUCH.~ = ~Naja, jetzt können wir doch wohl hoffentlich gehen, oder?~
IF ~~ THEN DO ~SetGlobal("ACVA#BOOK","LOCALS",2)~ EXIT
END
END

INTERJECT_COPY_TRANS VA#BALOR 2 ACVA#BALOR2
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)OR(2)PartyHasItem("ACAXE")PartyHasItem("ACAXE2")~ THEN
~Nicht unser Leben wird es sein, das hier beendet wird! Ihr werdet zurück in die Grube fahren!~
== VA#BALOR IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)OR(2)PartyHasItem("ACAXE")PartyHasItem("ACAXE2")~ THEN
~Auch eine heilige Axt wird Euch nicht retten!~
END

INTERJECT_COPY_TRANS2 VA#KERGO 0 ACVA#KERGO0
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Dieser Zwerg hier ist vor allen Dingen fähig, Euch seine Axt in den Wanst zu jagen, wenn Ihr irgendwelchen krummen Dinger versucht!~
==BJAHEIR IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)InParty("JAHEIRA")InMyArea("JAHEIRA")!StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN 
~Beruhigt Euch, Breagar. Ich wette, der Kapität wird sich nach dieser Drohung sicherlich bemühen, alles zum Besten zu gestalten.~
END

INTERJECT_COPY_TRANS2 VA#KERGO 5 ACVA#KERGO5
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Und ich warne Euch, Kapitän...~
==VA#KERGO IF ~InParty("ACBRE")InMyArea("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN 
~Ja ja, keine krummen Dinger. Ich weiß schon. (seufzt)~
END

INTERJECT_COPY_TRANS VA#TIAN 3 ACVA#TIAN3
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Natürlich. Sobald es darum geht, sich die Hände schmutzig zu machen, sucht der Herr Magier jemand anderen. Seid vorsichtig, <CHARNAME>, wir sollen über's Ohr gehauen werden!~
== VA#TIAN IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Ich versichere Euch, Meister Zwerg, dass Ihr einen gerechten Lohn für Eure Mühe bekommen werdet.~
END

INTERJECT_COPY_TRANS VA#TIAN 9 ACVA#TIAN9
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Einen Augenblick!~
== VA#TIAN IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Ja bitte?~
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Was sagtet Ihr gerade, wer auf uns wartet?~
== VA#TIAN IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Ein Seemann. Der Turm liegt auf einer Insel, erwähnte ich das nicht?~
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Nein, mein Freund, das scheint Euch entgangen zu sein! Habt Ihr vollends den Verstand verloren?~
== VA#TIAN IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Nun ich...~
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Ach was frage ich eigentlich. Ihr seid ein gottverdammter Magier, natürlich seid Ihr nicht ganz richtig im Kopf.~ = ~Dann bringt uns halt im Namen der Höllenfürsten zu Euren verdammten Schiff. Und *Ihr* steht natürlich wieder daneben und grinst, <CHARNAME>. Manchmal weiß ich wirklich nicht, wie ich es mit einem närrischen <PRO_RACE> wie Euch aushalte.~
== VA#TIAN IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Dann lasst uns aufbrechen!~
END

