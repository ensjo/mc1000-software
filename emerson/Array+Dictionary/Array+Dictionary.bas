1 REM This is a toy implementation of dynamic unidimensional ARRAYS and
2 REM DICTIONARIES in old MS-BASIC.
3 REM These arrays and dictionaries can contain other arrays and dictionaries,
4 REM so a complex nested structure can be represented with them.
5 REM The implementation is incomplete. For instance, there are no routines to
6 REM delete items from arrays and dictionaries, or to release unreferenced
7 REM slots (garbage collection). A JSON string parser is desirable too.
8 REM (Lots of REMarks to help people understand the code!)
9 REM 2025-08-15 Emerson Costa.

10 REM To test the routines, this structure is built and then displayed:
11 REM {
12 REM   "library": {
13 REM     "name": "Central City Library",
14 REM     "location": "Downtown",
15 REM     "books": [
16 REM       {
17 REM         "title": "The Great Gatsby",
18 REM         "author": "F. Scott Fitzgerald",
19 REM         "year": 1925
20 REM       },
21 REM       {
22 REM         "title": "1984",
23 REM         "author": "George Orwell",
24 REM         "year": 1949
25 REM       }
26 REM     ]
27 REM   }
28 REM }

100 REM Initialize:
110 GOSUB 10000

200 REM Build structure:
210 GOSUB 11900 : A = VI : REM (A = new DICT).
220 GOSUB 11900 : B = VI : REM (B = new DICT).
230 VJ = A : V$ = "library" : GOSUB 12300 : REM (A["library"] = B).
240 V$ = "Central City Library" : GOSUB 11500 : REM (VI = new STRING("Central...")).
250 VJ = B : V$ = "name" : GOSUB 12300 : REM (B["name"] = VI).
260 V$ = "Downtown" : GOSUB 11500 : REM (VI = new STRING("Downtown")).
270 VJ = B : V$ = "location" : GOSUB 12300 : REM (B["location"] = VI).
280 GOSUB 11800 : C = VI : REM (C = new ARRAY).
290 VJ = B : V$ = "books" : GOSUB 12300 : REM (B["books"] = C).
300 GOSUB 11900 : D = VI : REM (D = new DICT).
310 VJ = C : GOSUB 12100 : REM (C.append(D)).
320 V$ = "The Great Gatsby" : GOSUB 11500 : REM (VI = new STRING("The Great...")).
330 VJ = D : V$ = "name" : GOSUB 12300 : REM (D["name"] = VI).
340 V$ = "F. Scott Fitzgerald" : GOSUB 11500 : REM (VI = new STRING("F. Scott...")).
350 VJ = D : V$ = "author" : GOSUB 12300 : REM (D["author"] = VI).
360 V = 1925 : GOSUB 11400 : REM (VI = new NUMBER(1925)).
370 VJ = D : V$ = "year" : GOSUB 12300 : REM (D["year"] = VI).
380 GOSUB 11900 : D = VI : REM (D = new DICT).
390 VJ = C : GOSUB 12100 : REM (C.append(D)).
400 V$ = "1984" : GOSUB 11500 : REM (VI = new STRING("1984")).
410 VJ = D : V$ = "name" : GOSUB 12300 : REM (D["name"] = VI).
420 V$ = "George Orwell" : GOSUB 11500 : REM (VI = new STRING("George...")).
430 VJ = D : V$ = "author" : GOSUB 12300 : REM (D["author"] = VI).
440 V = 1949 : GOSUB 11400 : REM (VI = new NUMBER(1949)).
450 VJ = D : V$ = "year" : GOSUB 12300 : REM (D["year"] = VI).

500 REM Display structure:
510 PRINT "A ="
520 VI = A : GOSUB 13000 : REM (A.printJSON()).
530 PRINT : PRINT

600 REM One more test:
610 PRINT "A['library']['books'][1] ="
620 VI = A : V$ = "library" : GOSUB 12500 : REM (VI = A["library"]).
630 V$ = "books" : GOSUB 12500 : REM (VI = VI["books"]).
640 V = 1 : GOSUB 12400 : REM (VI = VI[1]).
650 GOSUB 13000 : REM (VI.printJSON()).
660 PRINT : PRINT

9999 STOP

10000 REM <<Initialize>>
10010 NIL = -1 : REM "Null pointer", marks end of a linked list.

10100 VM = 40 : REM Maximum value index.
10110 DIM VT(VM) : REM Value type: 0=number; 1=string; 2=array; 3=dict.
10120 DIM VI(VM) : REM Actual number / Index of string wrapper. (NIL if empty.) / Index of 1st array/dict item. (NIL if empty.)
10130 DIM VN(VM) : REM Index of next value item (linked list).
10140 VF = 0 : REM Index of first value slot in a linked list of free slots.
10150 FOR VI = VF TO VM - 1 : VN(VI) = VI + 1 : NEXT VI : REM Makes linked list of free value slots.
10160 VN(VM) = NIL : REM End of linked list.

10200 SM = 10 : REM Maximum string wrapper index.
10210 DIM S$(SM) : REM Actual string.
10220 DIM SN(SM) : REM Index of next string wrapper (linked list) (only for free slots).
10230 SF = 0 : REM Index of first string wrapper slot in a linked list of free slots.
10240 FOR SI = SF TO SM - 1 : SN(SI) = SI + 1 : NEXT SI : REM Makes linked list of free string wrapper slots.
10250 SN(SM) = NIL : REM End of linked list.

10300 AM = 10 : REM Maximum array item index.
10310 DIM AV(AM) : REM Index of value item.
10320 DIM AN(AM) : REM Index of next array item (linked list).
10330 AF = 0 : REM Index of first array item slot in a linked list of free slots.
10340 FOR AI = AF TO AM - 1 : AN(AI) = AI + 1 : NEXT AI : REM Makes linked list of free array item slots.
10350 AN(AM) = NIL : REM End of linked list.

10400 DM = 10 : REM Maximum dict item index.
10410 DIM DK$(DM) : REM Key of dict item.
10420 DIM DV(DM) : REM Index of value item.
10430 DIM DN(DM) : REM Index of next dict item (linked list).
10440 DF = 0 : REM Index of first dict item slot in a linked list of free slots.
10450 FOR DI = DF TO DM - 1 : DN(DI) = DI + 1 : NEXT DI : REM Makes linked list of free dict item slots.
10460 DN(DM) = NIL : REM End of linked list.

10999 RETURN

11000 REM <<VI = new VALUE>>
11010 IF VF = NIL THEN PRINT "Out of value slots. Init VM with a greater value." : STOP
11020 VI = VF : VF = VN(VI) : AN(AI) = NIL : REM Remove first slot from free value slots list.
11099 RETURN

11100 REM <<SI = new STRING_WRAPPER>>
11110 IF SF = NIL THEN PRINT "Out of string wrapper slots. Init SM with a greater value." : STOP
11120 SI = SF : SF = SN(SI) : SN(SI) = NIL : REM Remove first slot from free string wrapper slots list.
11199 RETURN

11200 REM <<AI = new ARRAY_ITEM>>
11210 IF AF = NIL THEN PRINT "Out of array item slots. Init AM to a greater value." : STOP
11220 AI = AF : AF = AN(AI) : AN(AI) = NIL : REM Remove first slot from free array item slots list.
11299 RETURN

11300 REM <<DI = new DICT_ITEM>>
11310 IF DF = NIL THEN PRINT "Out of dict item slots. Init DM with a bigger value." : STOP
11320 DI = DF : DF = DN(DI) : DN(DI) = NIL : REM Remove first slot from free dict item slots list.
11399 RETURN

11400 REM <<VI = new NUMBER(V)>>
11410 GOSUB 11000 : REM (VI = new VALUE).
11420 VT(VI) = 0 : REM Set value type = NUMBER.
11430 VI(VI) = V : REM Store actual number directy in value.
11499 RETURN

11500 REM <<VI = new STRING(V$)>>
11510 GOSUB 11000 : REM (VI = new VALUE).
11520 VT(VI) = 1 : REM Set value type = STRING.
11530 IF V$ = "" THEN VI(VI) = NIL : RETURN : REM Empty string.
11540 GOSUB 11100 : REM (SI = new STRING_WRAPPER).
11550 VI(VI) = SI : REM Make value refer to string wrapper.
11560 S$(SI) = V$ : REM Store actual string in string wrapper.
11599 RETURN

11600 REM <<V = {VI:NUMBER}.getBareNumber()>>
11605 IF VT(VI) <> 0 THEN PRINT "VI does not refer to a NUMBER value." : STOP
11610 V = VI(VI) : REM Return actual number stored in value.
11699 RETURN

11700 REM <<V$ = {VI:STRING}.getBareString()>>
11705 IF VT(VI) <> 1 THEN PRINT "VI does not refer to a STRING value." : STOP
11710 IF VI(VI) = NIL THEN V$ = "" : RETURN : REM Empty string.
11720 V$ = S$(VI(VI)) : REM Return actual string stored in string wrapper.
11799 RETURN

11800 REM <<VI = new ARRAY>>
11810 GOSUB 11000 : REM (VI = new VALUE).
11820 VT(VI) = 2 : REM Set value type = ARRAY.
11830 VI(VI) = NIL : REM Array items list is empty.
11899 RETURN

11900 REM <<VI = new DICT>>
11910 GOSUB 11000 : REM (VI = new VALUE).
11920 VT(VI) = 3 : REM Set value type = DICT.
11930 VI(VI) = NIL : REM Dict items list is empty.
11999 RETURN

12000 REM <<VI = new VALUE(VI)>>
12010 ON VT(VI) GOTO 12030,12040,12040
12020 GOSUB 11600 : GOTO 11400 : REM Clone number value.
12030 GOSUB 11700 : GOTO 11500 : REM Clone string value.
12099 RETURN : REM Array or dict: Do not clone, return same reference.

12100 REM <<{VJ:ARRAY}.append(VI)>>
12105 IF VT(VJ) <> 2 THEN PRINT "VJ does not refer to an ARRAY value." : STOP
12110 GOSUB 11200 : REM (AI = new ARRAY_ITEM).
12120 AJ = VI(VJ) : IF AJ = NIL THEN VI(VJ) = AI : GOTO 12150 : REM Add first item to empty array.
12130 IF AN(AJ) <> NIL THEN AJ = AN(AJ) : GOTO 12130 : REM Seek last item.
12140 AN(AJ) = AI : REM Add new item after last item.
12150 AV(AI) = VI : REM Store value in array item.
12199 RETURN

12200 REM <<{VJ:ARRAY}[V] = VI>>
12205 IF VT(VJ) <> 2 THEN PRINT "VJ does not refer to an ARRAY value." : STOP
12210 AI = VI(VJ) : REM Get index of first array item.
12220 I = INT(V) : IF I < 0 THEN AI = NIL : REM Make sure index parameter is integer, setup error if negative.
12230 IF AI = NIL THEN PRINT "Index "; V; " not found in ARRAY VJ." : STOP : REM Reached end of array items list.
12220 IF I THEN AI = AN(AI) : I = I - 1 : GOTO 12220 : REM Get index of next array item and repeat if desired item not reached.
12230 AV(AJ) = VI : REM Store value in array item.
12299 RETURN

12300 REM <<{VJ:DICT}[V$] = VI>>
12305 IF VT(VJ) <> 3 THEN PRINT "VJ does not refer to a DICT value." : STOP
12310 DJ = VI(VJ) : IF DJ <> NIL THEN 12340 : REM Get index of first dict item.
12320 GOSUB 11300 : REM (DI = new DICT_ITEM).
12330 VI(VJ) = DI : GOTO 12380 : REM Add first item to empty dict.
12340 IF DK$(DJ) = V$ THEN 12390 : REM Seek existing key...
12350 IF DN(DJ) <> NIL THEN DJ = DN(DJ) : GOTO 12340 : REM ...or last item.
12360 GOSUB 11300 : REM (DI = new DICT_ITEM).
12370 DN(DJ) = DI : REM Add new item after last item.
12380 DK$(DI) = V$ : REM Store key in dict item.
12390 DV(DI) = VI : REM Store value in dict item.
12399 RETURN

12400 REM <<VI = {VI:ARRAY}[V]>>
12405 IF VT(VI) <> 2 THEN PRINT "VI does not refer to an ARRAY value." : STOP
12410 AI = VI(VI) : REM Get index of first array item.
12420 I = INT(V) : IF I < 0 THEN AI = NIL : REM Make sure index parameter is integer, setup error if negative.
12430 IF AI = NIL THEN PRINT "Index "; V; " not found in ARRAY value VI." : STOP : REM Reached end of array items list.
12440 IF I THEN AI = AN(AI) : I = I - 1 : GOTO 12430 : REM Get index of next array item and repeat if desired item not reached.
12450 VI = AV(AI) : REM Return value in array item found.
12499 RETURN

12500 REM <<VI = {VI:DICT}[V$]>>
12505 IF VT(VI) <> 3 THEN PRINT "VI does not refer to a DICT value." : STOP
12510 DI = VI(VI) : REM Get index of first dict item.
12520 IF DI = NIL THEN PRINT "Key '"; V$; "' not found in DICT value VI." : STOP : REM Reached end of dict items list.
12530 IF DK$(DI) <> V$ THEN DI = DN(DI) : GOTO 12520 : REM Get index of next dict item and repeat if its key doesn't match the desired key.
12540 VI = DV(DI) : REM Return value in dict item found.
12599 RETURN

13000 REM <<VI.printJSON()>>
13010 VJ = VI : REM Preserve original reference.
13020 R$ = "" : REM Recursion stack.

13100 ON VT(VJ) GOTO 13300, 13400, 13500 : REM Branch according to value type.

13200 PRINT VI(VJ); : REM Print number.
13299 RETURN

13300 PRINT CHR$(34); : REM Print opening quotation mark.
13310 SI = VI(VJ) : IF SI <> NIL THEN PRINT S$(SI); : REM Print string if not empty.
13320 PRINT CHR$(34); : REM Print closing quotation mark.
13399 RETURN

13400 PRINT "[";
13410 AI = VI(VJ) : IF AI = NIL THEN 13450 : REM Get index of first array item. Jump if array is empty.
13420 R$ = CHR$(AI) + R$ : VJ = AV(AI) : GOSUB 13100 : AI = ASC(R$) : R$ = MID$(R$, 2) : REM Print value recursively
13430 AI = AN(AI): REM Get index of next array item.
13440 IF AI <> NIL THEN PRINT ","; : GOTO 13420 : REM Print "," and repeat if end of array items list not reached.
13450 PRINT "]";
13499 RETURN

13500 PRINT "{";
13510 DI = VI(VJ) : IF DI = NIL THEN 13560 : REM Get index of first dict item. Jump if dict is empty.
13520 PRINT CHR$(34); DK$(DI); CHR$(34); ":"; : REM Print key in quotation marks.
13530 R$ = CHR$(DI) + R$ : VJ = DV(DI) : GOSUB 13100 : DI = ASC(R$) : R$ = MID$(R$, 2) : REM Print value recursively.
13540 DI = DN(DI) : REM Get index of next dict item.
13550 IF DI <> NIL THEN PRINT ","; : GOTO 13520 : REM Print "," and repeat if end of dict items list not reached.
13560 PRINT "}";
13599 RETURN
