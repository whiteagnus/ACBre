BEGIN ACBRE25

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
SAY @0 = @1
++ @2 DO ~SetGlobal("ACBRESUMMONED","GLOBAL",2)~ + 2
++ @3 DO ~SetGlobal("ACBRESUMMONED","GLOBAL",2)~ + 3
++ @4 DO ~SetGlobal("ACBRESUMMONED","GLOBAL",2)~ + 4
++ @5 DO ~SetGlobal("ACBRESUMMONED","GLOBAL",2)~ + 5
++ @6 DO ~SetGlobal("ACBRESUMMONED","GLOBAL",2)~ + 6
END

IF ~~ THEN BEGIN 2
SAY @7
IF ~Global("ACBREEXISTS","GLOBAL",0)~ THEN GOTO 7a
IF ~Global("ACBREEXISTS","GLOBAL",1)~ THEN GOTO 7c
END

IF ~~ THEN BEGIN 3
SAY @8
IF ~Global("ACBREEXISTS","GLOBAL",0)~ THEN GOTO 7a
IF ~Global("ACBREEXISTS","GLOBAL",1)~ THEN GOTO 7c
END

IF ~~ THEN BEGIN 4
SAY @9
IF ~Global("ACBREEXISTS","GLOBAL",0)~ THEN GOTO 7a
IF ~Global("ACBREEXISTS","GLOBAL",1)~ THEN GOTO 7c
END

IF ~~ THEN BEGIN 5
SAY @10
IF ~Global("ACBREEXISTS","GLOBAL",0)~ THEN GOTO 7a
IF ~Global("ACBREEXISTS","GLOBAL",1)~ THEN GOTO 7c
END

IF ~~ THEN BEGIN 6
SAY @11
IF ~Global("ACBREEXISTS","GLOBAL",0)~ THEN GOTO 7a
IF ~Global("ACBREEXISTS","GLOBAL",1)~ THEN GOTO 7c
END

IF ~~ THEN BEGIN 7a
SAY @12
++ @13 DO ~SetGlobal("ACBREBIO","GLOBAL",3)SetGlobal("ACFORRESDEAD","GLOBAL",1)~ + 7b
++ @14 DO ~SetGlobal("ACBREBIO","GLOBAL",3)~ + 7b
++ @15 DO ~SetGlobal("ACBREBIO","GLOBAL",2)~ + 7b
++ @16 DO ~SetGlobal("ACBREBIO","GLOBAL",2)SetGlobal("ACFORRESDEAD","GLOBAL",1)~ + 7b
++ @17 DO ~SetGlobal("ACBREBIO","GLOBAL",1)~ + 7b
END

IF ~~ THEN BEGIN 7b
SAY @18
++ @19 + 8
++ @20 + 9
END

IF ~~ THEN BEGIN 7c
SAY @21
++ @19 + 8
++ @20 + 9
END

IF ~~ THEN BEGIN 8
SAY @22
IF ~~ THEN DO ~SetGlobal("ACBREEXSISTS","GLOBAL",1)SetGlobal("ACBREINPARTY","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 9
SAY @23
IF ~~ THEN DO ~SetGlobal("ACBREEXSISTS","GLOBAL",1)SetGlobal("ACBREINPARTY","GLOBAL",3)SetLeavePartyDialogFile()MoveToPointNoInterrupt([2562.1376])Face(3)~ EXIT
END