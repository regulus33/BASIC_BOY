10 BORDER 1: PAPER 1: INK 7: CLS
20 LET start = 0
25 LET duration = 0
30 IF INKEY$ = "" THEN GO TO 70
40 IF start = 0 THEN LET start = VAL (TIME$)
50 PRINT AT 0,0;"Meditating... Press any key to stop."
60 GO TO 30
70 IF start <> 0 THEN LET duration = duration + (VAL (TIME$) - start): LET start = 0
80 LET d = INT(duration / 86400)
90 LET h = INT((duration - d * 86400) / 3600)
100 LET m = INT((duration - d * 86400 - h * 3600) / 60)
110 LET s = duration - d * 86400 - h * 3600 - m * 60
120 PRINT AT 0,0; OVER 1;"You have meditated for ";d;" days, ";h;" hours, ";m;" minutes and ";s;" seconds of ZEN        "
130 GO TO 30

