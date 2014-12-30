APPEND ACBREJ

IF ~TRUE()~ THEN BEGIN PID
SAY ~Was gibt es?~ [ACBRE_22]
IF ~AreaCheck("AR0334")Global("ACFORGE1","GLOBAL",2)PartyHasItem("ACSTONE1")PartyHasItem("ACSTONE2")PartyHasItem("ACSTONE3")~ THEN REPLY ~Lasst uns mit dem Schmieden beginnen.~ DO ~SetGlobal("ACFORGE1","GLOBAL",3)~ + PID.FORGE
IF ~Global("ACBREPID1","GLOBAL",1)~ THEN REPLY ~Erzählt mir etwas über Euer zu Hause.~ + PID.1
IF ~Global("ACBREPID2","GLOBAL",1)~ THEN REPLY ~Ich möchte etwas über Eure Religion erfahren.~ + PID.2
++ ~Erzählt mir etwas über Euch.~ + PID.10
IF ~Global("ACBRETOLDAJOKE","GLOBAL",0)~ THEN REPLY ~He Breagar, was ist der Unterschied zwischen einem Drachen und einem Zwerg?~ + PID.11
++ ~Schon gut.~ + PID.END
END

IF ~~ THEN BEGIN PID.B
SAY ~Worüber wollt Ihr reden?~
IF ~Global("ACBREPID1","GLOBAL",1)~ THEN REPLY ~Erzählt mir etwas über Euer zu Hause.~ + PID.1
++ ~Erzählt mir etwas über Euch.~ + PID.10
IF ~Global("ACBRETOLDAJOKE","GLOBAL",0)~ THEN REPLY ~He Breagar, was ist der Unterschied zwischen einem Drachen und einem Zwerg?~ + PID.11
++ ~Schon gut.~ + PID.END
END

IF ~~ THEN BEGIN PID.FORGE
SAY ~Großartig. Dann lasst uns keine Zeit verlieren. Beten wir, dass Moradin unsere Arbeit segnet.~
IF ~~ THEN DO ~ClearAllActions()StartCutScenemode()StartCutScene("ACCUT_13")~ EXIT
END

IF ~~ THEN BEGIN PID.END
SAY ~Hrmpf.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PID.1
SAY ~Was möchtet Ihr gerne wissen?~
++ ~Ich würde gerne über Eure Heimat reden.~ + PID1.1
IF ~Global("ACPIDGOTRIK","GLOBAL",0)~ THEN REPLY ~Ich würde gerne etwas über Euren Clansgründer hören.~ + PID1.2
IF ~Global("ACPIDGOTRIK","GLOBAL",1)~ THEN REPLY ~Ich möchte gerne die Geschichte von Gotrik weiterhören.~ + PID1.3
IF ~Global("ACPIDGOTRIK","GLOBAL",2)~ THEN REPLY ~Ich möchte gerne die Geschichte von Gotrik weiterhören.~ + PID1.4
IF ~Global("ACPIDGOTRIK","GLOBAL",3)~ THEN REPLY ~Ich möchte gerne die Geschichte von Gotrik weiterhören.~ + PID1.5
IF ~Global("ACPIDGOTRIK","GLOBAL",4)~ THEN REPLY ~Ich möchte gerne noch einmal die Geschichte von Gotrik hören.~ + PID1.2
++ ~Erzählt mir von Eurer Familie.~ + PID1.12
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.1
SAY ~Die Sturmhornberge? Nun, wenn Ihr wirklich etwas wissen wollt, dann fragt.~
++ ~Wo genau liegen die Berge eigentlich?~ + PID1.8
++ ~Wie ist es da so?~ + PID1.9
++ ~Wohnt Ihr gerne dort?~ + PID1.10
++ ~Ist es in den Bergen gefährlich?~ + PID1.11
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.2
SAY ~Gotrik Bardormar, der Gründer des Bardormar-Clans, ist mein Ur-Ur-Ur-Urgroßvater. Er war ein Zwerg wie er im Buche steht. Gute vier Fuß groß, Arme wie Baumstämme, strahlend braune Augen und ein Bart, der sich majestätisch über seinen kugelrunden Bauch wölbte.~ = ~Er war wohl aufbrausend und sehr direkt, wenn ihn etwas ärgerte, aber viel öfter soll man sein dröhnendes Lachen denn sein Wutgeschrei gehört haben.~ = ~Gotrik hatte das Bäckerhandwerk gelernt, wie sein Vater vor ihm und dessen Vater vor ihm. Meine Familie steht schon so lange am Backofen, dass man nicht genau sagen kann, wann der erste meiner Vorväter den ersten Laib Brot aus dem Feuer gezogen hat.~ = ~Sie alle waren begnadete Bäcker, aber Gotrik soll sie alle überflügelt haben. Clans schicken Boten über Meilen hinweg, um bei ihm einzukaufen. Und deswegen bekam er bald den Spitznamen "Bardormar" verpasst. Die "Rote Seele des Berges" nannte man ihn, weil sein Gesicht in der Glut des Ofens glühlte und sein Bart schimmerte wie dunkle Lava.~
++ ~Erzählt bitte weiter.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",1)~ + PID1.3
++ ~Ich glaube, das Reicht fürs erste.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",1)~ + PID1.7
END

IF ~~ THEN BEGIN PID1.3
SAY ~Gotrik war also der beste und berühmteste Bäcker, den man in ganz Faerûn kannte. Jedenfalls bei den Zwergen. Ich weiß, dass außerhalb der Clanshallen die meisten Leute glauben, Zwerge würden nur etwas auf Kohle und Stahl geben, aber das ist so nicht richtig.~ = ~Kohle kann man nicht essen und Eisen kann man nicht trinken. Jedes Handwerk hat seinen Platz und findet seine Anerkennung, wenn es gut gemacht wird.~ = ~Gotrik liebte seinen Ofen, er liebte den Geruch von Mehl und das leise Knuspern, wenn ein frischer Laib Brot aus dem Ofen gezogen wurde. Es bereitete ihm nichts mehr Freude, als den Duft von einem frischen Backwerk einzuatmen.~ = ~Allerdings fand das ruhige Leben ein jähes Ende, denn Orks fielen in das Gebiet ein, in der Gotriks Clan seine Feste gebaut hatte und zogen plündernd und mordend durch die Lande. Der Thain des Clans ließ die Feste abriegeln und jedes Tor und jede Scharte verschließen, in der Hoffnung, dass die Orks keine Lust hatten, sich an der Festung die Zähne auszubeißen.~ = ~Dummerweise war es gerade Erntezeit und Gotrik fürchtete um das Mehl, das er von den Bauern der Umgebung bezog. Ohne Mehl kein Brot, und kein Brot zu haben bedeutet Hungern.~
++ ~Erzählt bitte weiter.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",2)~ + PID1.4
++ ~Ich glaube, das Reicht fürs erste.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",2)~ + PID1.7
END

IF ~~ THEN BEGIN PID1.4
SAY ~Der ganze Clan Gotriks war von der Außenwelt abgeschnitten und das Mehl ging also zur Neige. Da fasste Gotrik einen kühnen Plan: Er band sich ein Kurzschwert um und lege eine leichte Lederrüstung an, um beweglich zu bleiben. Dann kletterte er durch den Schornstein der Backstube an die Oberfläche, um zu schauen, ob er wenigestens einen Sack Mehl auftreiben konnte. Die Geschichten über das, was er dort erlebte, sind zahlreich und viele wahrscheinlich erstunken und erlogen, aber das interessiert Euch wahrscheinlich nicht.~ = ~Wichtig ist nur, dass Gotrik es tatsächlich schaffte, einen ganzen Sack Mehl aufzutreiben.~ = ~Und diesen befördete er auf dem gleichen Wege wieder in die Backstube, auf dem er sie verlassen hatte.~ = ~Auch dies ist eine eigene Geschichte für sich, die ein anderes Mal erzählt werden soll. Aber die Geschichte vom bärtigen, dicken Mann, der mit einem schweren Sack beladen durch den Schornstein kriecht, ist gerade bei Kindern sehr beliebt.~
++ ~Erzählt bitte weiter.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",3)~ + PID1.5
++ ~Ich glaube, das Reicht fürs erste.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",3)~ + PID1.7
END

IF ~~ THEN BEGIN PID1.5
SAY ~Nun, Gotrik hatte es also geschafft, einen Sack Mehl zu seinem Clan zu bringen, doch als er wieder in die Hallen trat, erwartete ihn ein Bild des Grauens.~ = ~Eine Horde Duergar war in der Zeit, in der er an der Oberfläche war, in die Hallen eingedrungen und hatte seinen gesamten Clan geplündert und die Zwerge erschlagen oder verschleppt.~ = ~Alle Fluchtwege waren verrammelt und somit hatte sich Gotriks Clan sein eigenes Mausoleum gebaut.~ = ~Ihr könnt Euch sicherlich denken, dass die Geschichten, wie Gotrik ins Unterreich eindrang und den Duergar nachsetzte noch zahlreicher sind als die, die seine Abenteuer an der Oberfläche erzählen.~ = ~Jedenfalls schaffte Gotrik es, mit einer Handvoll Überlebender zu entkommen. Da sie jedoch zu wenige waren, um die große Feste angemessen zu verteidigen, noch dazu, da jetzt die Duergar Ihre Lage kannten, verließen die Überlebenden die alten Hallen und zogen in die Sturmhornberge, wo sie ein kleines Tal fanden.~ = ~Hier errichteten sie die neue Clanshalle und bebauten das Land, wie sie es gewohnt waren. Gotrik wurde zum Thain gekrönt und begründete so den Clan der Bardormar, der bis heute in den Bergen an der selben Stelle haust.~
++ ~Ganz schön lang, Eure Geschichte.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",4)SetGlobal("ACBRETOLDBOUTDUERGAR","GLOBAL",1)~ + PID1.6
++ ~Ich möchte doch über etwas anderes reden.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",4)SetGlobal("ACBRETOLDBOUTDUERGAR","GLOBAL",1)~ + PID.B
END

IF ~~ THEN BEGIN PID1.6
SAY ~So sind Zwergengeschichten nun einmal. Die Geschichten der älteren Clans sind noch um einiges länger.~
IF ~~ THEN GOTO PID.B
END

IF ~~ THEN BEGIN PID1.7
SAY ~Dann machen wir das nächste Mal an dieser Stelle weiter.~
IF ~~ THEN GOTO PID.B
END

IF ~~ THEN BEGIN PID1.8
SAY ~An der Nordgrenze zu Cormyr, ein ganzes Stück von hier entfernt, das kann ich Euch sagen.~
++ ~Wie ist es da so?~ + PID1.9
++ ~Wohnt Ihr gerne dort?~ + PID1.10
++ ~Ist es in den Bergen gefährlich?~ + PID1.11
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.9
SAY ~Schroffe Höhen und kahle Felsen, ein hartes, ungebeugtes Land. Ihr würdet es wahrscheinlich hassen, <CHARNAME>. Außer ein paar kleinen Menschensiedlungen gibt es dort auch nichts, was irgendwen interessieren könnte.~
++ ~Wo genau liegen die Berge eigentlich?~ + PID1.8
++ ~Wohnt Ihr gerne dort?~ + PID1.10
++ ~Ist es in den Bergen gefährlich?~ + PID1.11
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.10
SAY ~Mein Clan hat seine Heimat dort, ja, ich lebe sogar verdammt gerne dort!~
++ ~Wo genau liegen die Berge eigentlich?~ + PID1.8
++ ~Wie ist es da so?~ + PID1.9
++ ~Ist es in den Bergen gefährlich?~ + PID1.11
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.11
SAY ~Wenn man nicht darauf achtet, wo man seine Nase hineinsteckt, ist es überall gefährlich. Aber die Berge sind schon ein besonderer Platz.~ = ~Da gibt es genug Viehzeug, das Euch die Hölle heiß macht, wenn Ihr nicht aufpasst und nicht wisst, was Ihr tut.~ = ~Und dann noch die paar Goblinstämme, die sich seit der Zerschlagung ihres Reiches dort herumtreiben, aber die sind eher harmlos. Manche sind sogar fast vernünftige Nachbarn, mit denen man etwas Handeln kann.~
++ ~Wo genau liegen die Berge eigentlich?~ + PID1.8
++ ~Wie ist es da so?~ + PID1.9
++ ~Wohnt Ihr gerne dort?~ + PID1.10
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.12
SAY ~Was soll ich Euch erzählen?~
++ ~Erzählt mir von Eurem Vater.~ + PID1.13
++ ~Erzählt mir von Eurer Mutter.~ + PID1.14
++ ~Wie sieht's bei Euch mit Geschwistern aus?~ + PID1.15
++ ~Erzählt mir die Geschichte Eurer Familie.~ + PID1.16
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.13
SAY ~Nun ja, mein Vater, Baragar, stammt auf direktem Wege von unserem Clansgründer, Gotrik Bardormar ab. Und er hat das Bäckerhandwerk von kleinauf gelernt, ebenso wie mein Bruder und ich, bevor ich mich der Schmiedekunst zuwandte.~ = ~Er ist ein wahrer Künstler am Ofen, das kann ich Euch sagen, allerdings auch ziemlich aufbrausend, wenn ihm etwas missfällt. Wir... wir haben nicht mehr miteinander gesprochen, seitdem ich die Backstube verlassen habe.~
++ ~Erzählt mir von Eurer Mutter.~ + PID1.14
++ ~Wie sieht's bei Euch mit Geschwistern aus?~ + PID1.15
++ ~Erzählt mir die Geschichte Eurer Familie.~ + PID1.16
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.14
SAY ~Meine Mutter Herana stammt ursprünglich von der Feste Nurkhun, oder "Glitzerstein", wie Ihr sie nennen würdet.~ = ~Sie ist fast das genaue Gegenteil von meinem Vater. Er ist meist ruhig und gelassen, aber wenn ihm etwas nicht passt, dann wackeln die Wände. Sie ist immer laut, hektisch und besorgt, nur dann, wenn es ernst wird, ist sie still und behält den kühlen Kopf.~
++ ~Erzählt mir von Eurem Vater.~ + PID1.13
++ ~Wie sieht's bei Euch mit Geschwistern aus?~ + PID1.15
++ ~Erzählt mir die Geschichte Eurer Familie.~ + PID1.16
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.15
SAY ~Dalgar würde Euch gefallen. Er würde wohl besser in Eure Bande von Verrückten hier passen als ich.~ = ~Dalgar ist fast zwanzig Jahre älter als ich, aber für zwergische Verhältnisse ist das natürlich nicht allzu viel. Wir standen uns bis zu seiner Abreise sehr nahe.~
++ ~Er ist gereist? wohin?~ + PID8.5
++ ~Erzählt mir von Eurem Vater.~ + PID1.13
++ ~Erzählt mir von Eurer Mutter.~ + PID1.14
++ ~Erzählt mir die Geschichte Eurer Familie.~ + PID1.16
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.16
SAY ~Die Geschichte meiner Familie? Ich glaube nicht, dass sie Euch sehr interessieren würde, es sei denn, Ihr interessiert Euch für Brotrezepte, Backzeiten und die große Hefedürre von '98.~ = ~Meine Vorväter waren Bäcker, <CHARNAME>, und nichts mehr. Keiner hat jemals ein Abenteuer erlebt oder ist auf Reisen gegangen.~
++ ~Erzählt mir von Eurem Vater.~ + PID1.13
++ ~Erzählt mir von Eurer Mutter.~ + PID1.14
++ ~Wie sieht's bei Euch mit Geschwistern aus?~ + PID1.15
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID8.5
SAY ~Niemand weiß das so genau.~ = ~Er war schon immer sehr unternehmungslustig und hat sich gefragt, wie die Welt dort draußen wohl aussehen mag.~ = ~Als er noch klein war kam mal ein Priester des Mathammor auf Wanderschaft vorbei und er entzündete in meinem Bruder eine Fackel der Sehnsucht, wenn Ihr es so nennen wollt.~ = ~Er hat dem armen Dalgar den Kopf verdreht mit seinen Lehren, dass wahres Wissen nur draußen in der Welt zu finden sei und so etwas alles.~ = ~Und das fiel bei meinem Bruder auf fruchtbaren Boden. er fing schon bald an, längere Exkursionen durch die Berge zu wagen und kaum dass er volljährig wurde band er sein Bündel und verließ die Hallen Bardormar, um die Welt zu sehen.~ = ~Es war eine schwere Zeit, mein Vater verstand die Welt nicht mehr.~ = ~Die Erinnerung schmerzt noch, <CHARNAME>. Es ist fast zwanzig Jahre her, und ich vermisse ihn noch wie gestern.~ = ~Reden wir von etwas anderem.~
IF ~~ THEN GOTO PID.B
END

IF ~~ THEN BEGIN PID.10
SAY ~Was soll ich Euch sagen, das Ihr nicht schon wisst? Ich bin Breagar, Baragars Sohn aus dem Clan Bardormar. Ich bin Anfang 50, in der Blüte meiner Jahre. Meine Axt ist scharf, mein Arm ist stark und mein Auge ist wachsam.~ = ~Und ich stehe schon viel zu lange mit einem Bengel herum, der lieber dafür sorgen sollte, dass es etwas vorwärts geht, anstelle Maulaffen feil zu halten.~ ~Und ich stehe schon viel zu lange mit einer Göre herum, die lieber dafür sorgen sollte, dass es etwas vorwärts geht, anstelle Maulaffen feil zu halten.~
IF ~~ THEN GOTO PID.B
END

IF ~~ THEN BEGIN PID.2
SAY ~Was soll ich Euch erzählen?~
++ ~Was sind Eure Götter, Breagar?~ + PID2.1
++ ~Könnt Ihr mir etwas über die einzelnen Götter erzählen?~ + PID2.2
++ ~Erzählt mir mehr über den Weltenschmied.~ + PID2.3
++ ~Was glaubt Ihr wird nach dem Tod mit Euch passieren?~ + PID2.4
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.1
SAY ~Wenn ich am Amboss stehe, dann hält Moradin seine Hand über mich. In der Schlacht werde ich von Clangeddin geleitet. Und in der Ruhe des Clans wacht Berronar über meinen Schlaf. Und ich hoffe, dass hier draußen Marthammor Duin ein Auge auf mich hat.~
++ ~Könnt Ihr mir etwas über die einzelnen Götter erzählen?~ + PID2.2
++ ~Erzählt mir mehr über den Weltenschmied.~ + PID2.3
++ ~Was glaubt Ihr wird nach dem Tod mit Euch passieren?~ + PID2.4
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.3
SAY ~Der Weltenschmied, Telormardarsan, ist der erste, der große, der, der die Welt einst auf seinem Amboss schmiedete.~
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.4
SAY ~Das, was jedem Zwerg wiederfahren wird. Dumathoin wird uns vor Moradins Richtstuhl bringen, wo wir Rechenschaft ablegen und den Lohn für das bekommen, was wir im Leben geleistet haben.~ = ~Ein rechtschaffener Handwerker erfreut sich einer Ewigkeit in einer WErkstatt, die zu beschreiben die Worte der hiesigen Zungen nicht ausreichen. Große Krieger üben sich im Kampfe und streiten gegen böse Kräfte.~
++ ~Was sind Eure Götter, Breagar?~ + PID2.1
++ ~Könnt Ihr mir etwas über die einzelnen Götter erzählen?~ + PID2.2
++ ~Erzählt mir mehr über den Weltenschmied.~ + PID2.3
++ ~Ich möchte doch über etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2
SAY ~Über welchen Gott wollt Ihr etwas erfahren?~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2a
SAY ~Moradin ist der Seelenschmied, der Zwergenvater. Ihm obliegt es, dem Zwerg seine Seele zu geben und nach seinem, Tod über ihn zu richten. Er ist ein weiser und gerechter, aber harter Richter. Moradin hält uns an, das Gute zu tun und das Böse zu vernichten.~
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2b
SAY ~Berronar ist Moradins Gattin. Die geheiligte Mutter schützt den Clan und segnet die Familie und die Liebenden. Sie ist eine strenge, aber liebende Mutter für alle Zwerge.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2c
SAY ~Clangeddin ist der Vater der Schlachten, der Fluch der Goblins und der Riesenschlächter. Er steht den rechtschaffenen Zwergen im Kampf zur Seite und begrüßt einen ehrenvollen Kampf ohne Verrat und Täuschung. Er hat uns beigebracht, unsere Waffen gegen die Riesen zu schwingen und sie dort zu treffen, wo es weh tut, wenn Ihr versteht, was ich meine.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2d
SAY ~Dugmaren ist der wandernde Forscher, der Gott der Forschung, des Wissens und der Erfindungen.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2e
SAY ~Dumathoin wacht über die Bergleute in der Tiefe und leitet die Toten in die Festhallen auf der anderen Seite.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2g
SAY ~Haela ist die Göttin des Glücks und des Wagemutes, die all jenen tollkühnen zur Seite steht, die Toril von bösen Ungeheuern befreien wollen.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2f
SAY ~Gorm ist der Schutzherr der Zwergenfesten und der wachsame Gott. Der ewige Vigilant beschwört seine Avatare immer dann, wenn es darum geht, eine Zwergenfeste zu verteidigen und der Kampf aussichtslos erscheint.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2h
SAY ~Marthammor Duin beschützt Zwerge auf Wanderschaft. Wenn sich ein Zwerg auf Reisen begibt, dann bittet er den Finder-der-Wege um seine Hilfe.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2i
SAY ~(Breagar spuckt hörbar aus) Über diesen Duergartreiber weiß ich nichts und will ich auch nichts wissen.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2j
SAY ~Abbathor ist der einige böse Gott, der von Moradin geduldet wird. Er ist der Gott der Gier und des Neides und lehrt, dass jedes Mittel recht ist, seinen Reichtum zu mehren, so lange kein Zwerg dabei zu Schaden kommt.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2k
SAY ~(Breagar spuckt hörbar aus) Über diesen Duergartreiber weiß ich nichts und will ich auch nichts wissen.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2l
SAY ~Sharindlar? Es wundert mich, dass Ihr diesen Namen kennt, <CHARNAME>. Die Herrin der Gnade ist wenig bekannt unter Dwarmos. Wohl, weil sich kein Nicht-Zwerg vorstellen kann, dass auch Zwerge Ihren Gefallen an Gnade, Mitleid und Romantik haben können.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2m
SAY ~Über Thard Harr kann ich nicht viel sagen. Ich weiß wohl dass er von den wilden Zwergen, die weitab von hier in den Wäldern wohnen, verehrt wird. Aber wen interessieren die schon? Pah.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Vergadain.~ + PID2.2n
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2n
SAY ~Vergadain, der lachende Zwerg? Er ist der Gott des Handels, der Verhandlungen und des Feilschens.~
++ ~Erzählt mir von Moradin.~ + PID2.2a
++ ~Erzählt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erzählt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erzählt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erzählt mir von Dumathoin.~ + PID2.2e
++ ~Erzählt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erzählt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erzählt mir von Marthamor Duin.~ + PID2.2h
++ ~Erzählt mir von Laduguer.~ + PID2.2i
++ ~Erzählt mir von Abbathor.~ + PID2.2j
++ ~Erzählt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erzählt mir von Sharindlar.~ + PID2.2l
++ ~Erzählt mir von Thard Harr.~ + PID2.2m
++ ~Ich möchte etwas anderes über Euren Glauben erfahren.~ + PID.2
++ ~Ich möchte doch über etwas ganz anderes reden.~ + PID.B
END
END

CHAIN
IF ~~ THEN ACBREJ PID.11
~Der Drache klaut das Gold um auf ihm zu schlafen und der Zwerg klaut das Gold, um mit ihm zu schlafen.~ = ~Der Witz hat schon sooo einen Bart, <CHARNAME>.~ DO ~SetGlobal("ACBRETOLDAJOKE","GLOBAL",1)~
==BIMOEN2 IF ~InParty("IMOEN2")See("IMOEN2")!StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN ~Also ich fand ihn lustig.~
EXIT