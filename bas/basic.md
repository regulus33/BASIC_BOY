# IF THEN
```basic
10 REM guess the number program
20 INPUT a
30 INPUT "guess the number", b
40 IF a>b THEN PRINT "too small guess again"
50 IF a<b THEN PRINT "too big guess again"
60 IF a=b THEN PRINT "nice, you got it": STOP
70 GO TO 30
```

# 
Notice not equal or `!=` is `<>`

Also, check out 20. We continue the loop when the condition is met. Its important to note that the remainder of the line is not evaluated beyond `THEN` if the `IF` is not `TRUE`
```basic
10 INPUT "guess the hard coded number", a
20 IF a <> 10 THEN PRINT "wrong! try again!": GO TO 10
30 PRINT "nice you guessed 10!": STOP
```

# LOOP

Simple way. 

You just loop back with a counte30r and a break case:

*NOTE* when editing a pre-existing variable, 

you still need to prepend let. See line `20`
```basic
10 LET counter=0
20 LET counter=counter+1
30 PRINT counter
40 IF counter<30 THEN GO TO 20
50 STOP

```

For loop. 
NEXT is like the end of the block. You need to list the var

So you can do nested loops

```basic
20 FOR c=1 TO 10
30 PRINT C
40 NEXT c
```


