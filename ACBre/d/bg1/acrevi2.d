BEGIN ACREVI2

IF ~!Global("ACREVI2DEAD","GLOBAL",1)Global("ACREVIQUEST","GLOBAL",8)AreaCheck("ACCEM1")~ THEN BEGIN START
SAY @0
IF ~~ THEN EXTERN ACCLERIC 16
END

IF ~~ THEN BEGIN 2
SAY @1 
++ @2 + 1
++ @3 + 3
++ @4 + 4
++ @5 + 5
++ @6 + 6
END

IF ~~ THEN BEGIN 3
SAY @7
++ @2 + 1
++ @8 + 2
++ @3 + 3
++ @4 + 4
++ @5 + 5
++ @6 + 6
END

IF ~~ THEN BEGIN 4
SAY @9
++ @2 + 1
++ @8 + 2
++ @3 + 3
++ @4 + 4
++ @5 + 5
++ @6 + 6
END

IF ~~ THEN BEGIN 5
SAY @10
++ @2 + 1
++ @8 + 2
++ @3 + 3
++ @4 + 4
++ @5 + 5
++ @6 + 6
END

CHAIN
IF ~Global("ACREVI2TALK","LOCALS",0)~ THEN ACREVI2 START
@11 = @12 DO ~SetGlobal("ACREVI2TALK","LOCALS",1)~
==ACREVI2 IF ~See(PLAYER1)InMyArea(PLAYER1)!StateCheck(PLAYER1,CD_STATE_NOTVALID)~ THEN @13
==ACBREB IF ~InParty("ACBRE")InMyArea("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @14
==ACREVI2 IF ~InParty("ACBRE")InMyArea("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @15
END
++ @2 + 1
++ @8 + 2
++ @3 + 3
++ @4 + 4
++ @5 + 5

CHAIN
IF ~~ THEN ACREVI2 1
@16
==%BRANWEN_BANTER% IF ~InParty("BRANWEN")InMyArea("BRANWEN")!StateCheck("BRANWEN",CD_STATE_NOTVALID)Global("ACREVIBRAN","LOCALS",0)~ THEN @17 DO ~SetGlobal("ACREVIBRAN","LOCALS",1)~
END
++ @8 + 2
++ @3 + 3
++ @4 + 4
++ @5 + 5
++ @6 + 6

CHAIN
IF ~~ THEN ACREVI2 6
@18 DO ~AddJournalEntry(@10022,QUEST)SetGlobal("ACREVIQUEST","GLOBAL",8)CreateVisualEffectObject("SPUNHOLY",MYSELF)Wait(2)MoveBetweenAreas("ACCEM1",[489.1083],14)~
==ACBREB IF ~InParty("ACBRE")InMyArea("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @14
==%MINSC_BANTER% IF ~InParty("MINSC")InMyArea("MINSC")!StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @19
==%VICONIA_BANTER% IF ~InParty("VICONI")InMyArea("VICONI")!StateCheck("VICONI",CD_STATE_NOTVALID)~ THEN @20
==%JAHEIRA_BANTER% IF ~InParty("JAHEIRA")InMyArea("JAHEIRA")!StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @21
==%DYNAHEIR_BANTER% IF ~InParty("DYNAHEIR")InMyArea("DYNAHEIR")!StateCheck("DYNAHEIR",CD_STATE_NOTVALID)~ THEN @22
==%KHALID_BANTER% IF ~InParty("KHALID")InMyArea("KHALID")!StateCheck("KHALID",CD_STATE_NOTVALID)~ THEN @23
==%AJANTIS_BANTER% IF ~InParty("AJANTIS")InMyArea("AJANTIS")!StateCheck("AJANTIS",CD_STATE_NOTVALID)~ THEN @24  = @25
==%KAGAIN_BANTER% IF ~InParty("KAGAIN")InMyArea("KAGAIN")!StateCheck("KAGAIN",CD_STATE_NOTVALID)~ THEN @26
==%KIVAN_BANTER% IF ~InParty("KIVAN")InMyArea("KIVAN")!StateCheck("KIVAN",CD_STATE_NOTVALID)~ THEN @27
==%SHARTEEL_BANTER% IF ~InParty("SHARTEEL")InMyArea("SHARTEEL")!StateCheck("SHARTEEL",CD_STATE_NOTVALID)~ THEN @28
==%YESLICK_BANTER% IF ~InParty("YESLICK")InMyArea("YESLICK")!StateCheck("YESLICK",CD_STATE_NOTVALID)~ THEN @29
==%XZAR_BANTER% IF ~InParty("XZAR")InMyArea("XZAR")!StateCheck("XZAR",CD_STATE_NOTVALID)~ THEN @30
==%MONTARON_BANTER% IF ~InParty("MONTARON")InMyArea("MONTARON")!StateCheck("MONTARON",CD_STATE_NOTVALID)~ THEN @31
==%CORAN_BANTER% IF ~InParty("CORAN")InMyArea("CORAN")!StateCheck("CORAN",CD_STATE_NOTVALID)~ THEN @32
==%ALORA_BANTER% IF ~InParty("ALORA")InMyArea("ALORA")!StateCheck("ALORA",CD_STATE_NOTVALID)~ THEN @33
==%GARRICK_BANTER% IF ~InParty("GARRICK")InMyArea("GARRICK")!StateCheck("GARRICK",CD_STATE_NOTVALID)~ THEN @34
EXIT

CHAIN
IF ~Global("ACREVIQUEST","GLOBAL",9)~ THEN ACREVI2 7
@35 DO ~SetGlobal("AC6701TELEPORT","GLOBAL",2)SetGlobal("ACREVIQUEST","GLOBAL",10)~
==ACTAEROM @36
==ACREVI2 @37
==ACTAEROM @38
==ACRALPH @39
==ACBREB IF ~InParty("ACBRE")InMyArea("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @40
==ACTAEROM IF ~InParty("ACBRE")InMyArea("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @41
==ACBREB IF ~InParty("ACBRE")InMyArea("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @42
END
IF ~~ THEN EXTERN ACTAEROM REWARD

APPEND ACTAEROM
IF ~~ THEN BEGIN REWARD
SAY @43  = @44
++ @45 + GOODJOB.1
++ @46 + GOODJOB.2
++ @47 + GOODJOB.3
++ @48 + GOODJOB.4
END

IF ~~ THEN BEGIN GOODJOB.1
SAY @49 
++ @50 + GOODJOB.5
++ @51 + GOODJOB.2
++ @52 + GOODJOB.3
++ @48 + GOODJOB.4
END

IF ~~ THEN BEGIN GOODJOB.2
SAY @53
++ @54 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",1)~ + GOODJOB.5
++ @55 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",2)~ + GOODJOB.5
++ @56 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",3)~ + GOODJOB.5
++ @57 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",4)~ + GOODJOB.5
++ @58 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",5)~ + GOODJOB.5
++ @59 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",6)~ + GOODJOB.5
++ @60 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",7)~ + GOODJOB.5
++ @61 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",8)~ + GOODJOB.5
++ @62 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",9)~ + GOODJOB.5
++ @63 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",10)~ + GOODJOB.5
++ @64 + GOODJOB.1
++ @52 + GOODJOB.3
++ @48 + GOODJOB.4
END

IF ~~ THEN BEGIN GOODJOB.3
SAY @53
++ @65 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",11)~ + GOODJOB.5
++ @66 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",12)~ + GOODJOB.5
++ @67 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",13)~ + GOODJOB.5
++ @68 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",14)~ + GOODJOB.5
++ @69 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",15)~ + GOODJOB.5
++ @70 DO ~SetGlobal("ACTAEREVCHOICE","LOCALS",16)~ + GOODJOB.5
++ @64 + GOODJOB.1
++ @71 + GOODJOB.2
++ @48 + GOODJOB.4
END

IF ~~ THEN BEGIN GOODJOB.4
SAY @72
++ @73 + GOODJOB.5a
++ @51 + GOODJOB.2
++ @52 + GOODJOB.3
++ @74 + GOODJOB.1
END

IF ~~ THEN BEGIN GOODJOB.5
SAY @75 = @76
IF ~Global("ACTAEREVCHOICE","LOCALS",0)~ THEN DO ~GiveGoldForce(2000)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",1)~ THEN DO ~GiveItemCreate("%tutu_var%sw1h06",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",2)~ THEN DO ~GiveItemCreate("%tutu_var%ax1h03",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",3)~ THEN DO ~GiveItemCreate("%tutu_var%sw1h09",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",4)~ THEN DO ~GiveItemCreate("halb07",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",5)~ THEN DO ~GiveItemCreate("blun15",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",6)~ THEN DO ~GiveItemCreate("%tutu_var%ax1h05",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",7)~ THEN DO ~GiveItemCreate("sw1h42",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",8)~ THEN DO ~GiveItemCreate("sw2h11",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",9)~ THEN DO ~GiveItemCreate("blun13",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",10)~ THEN DO ~GiveItemCreate("blun21",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",11)~ THEN DO ~GiveItemCreate("chan08",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",12)~ THEN DO ~GiveItemCreate("plat10",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",13)~ THEN DO ~GiveItemCreate("%tutu_var%chan05",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",14)~ THEN DO ~GiveItemCreate("leat11",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",15)~ THEN DO ~GiveItemCreate("%tutu_var%leat07",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
IF ~Global("ACTAEREVCHOICE","LOCALS",16)~ THEN DO ~GiveItemCreate("%tutu_var%plat04",LastTalkedToBy(),1,1,0)~ + GOODJOB.7
END

IF ~~ THEN BEGIN GOODJOB.5a
SAY @77 = @78
IF ~~ THEN DO ~ReputationInc(1)AddexperienceParty(1200)~ + GOODJOB.7
END
END

CHAIN
IF ~~ THEN ACTAEROM GOODJOB.7
@79
==ACREVI2 @80
==ACTAEROM @81 DO ~EraseJournalEntry(@10018)EraseJournalEntry(@10019)EraseJournalEntry(@10020)EraseJournalEntry(@10022)AddJournalEntry(@10023,QUEST_DONE)AddexperienceParty(1200)ActionOverride("ACRALPH",EscapeAreaDestroy(10))ActionOverride("ACREVI2",EscapeAreaDestroy(10))ActionOverride("ACTAEROM",EscapeAreaDestroy(10))~
EXIT