--- Raw source ---
(points, start, end) {
  var point = new Point(0, 0);
  for (var i = start; IC$Lt$0(i, IC$Load$5(points)); i = IC$Add$0(i, 1)) {
    IC$Invoke$0(point, IC$Load$6(points, i));
  }
  return point.dot(point);
}

--- Optimized code ---
optimization_id = 852
source_position = 1446
kind = OPTIMIZED_FUNCTION
name = sum
stack_slots = 7
Instructions (size = 550)
0 push ebp
1 mov ebp,esp
3 push esi
4 push edi
5 sub esp,0xXXXXXXXX
                  ;;; Store dynamic frame alignment tag for spilled doubles
8 mov [ebp-0xXXXXXXXX],0xXXXXXXXX
                  ;;; <@0,#0> -------------------- B0 --------------------
                  ;;; <@2,#1> context
15 mov eax,[ebp-0xXXXXXXXX]
                  ;;; <@3,#1> gap
18 mov [ebp-0xXXXXXXXX],eax
                  ;;; <@14,#10> -------------------- B1 --------------------
                  ;;; <@15,#10> gap
21 mov esi,eax
                  ;;; <@16,#12> stack-check
23 cmp esp,[0xXXXXXXXX]
29 jnc 36  (0xXXXXXXXX)
31 call StackCheck  (0xXXXXXXXX)    ;; code: BUILTIN
                  ;;; <@18,#12> lazy-bailout
                  ;;; <@20,#18> allocate
36 mov ecx,[0xXXXXXXXX]         ;; debug: position 1483
42 mov eax,ecx
44 add eax,0xXXXXXXXX
47 jc 393  (0xXXXXXXXX)
53 cmp eax,[0xXXXXXXXX]
59 ja 393  (0xXXXXXXXX)
65 mov [0xXXXXXXXX],eax
71 inc ecx
                  ;;; <@21,#18> gap
72 mov [ebp-0xXXXXXXXX],ecx
                  ;;; <@22,#353> store-named-field
75 mov [ecx+0xXXXXXXXX],0xXXXXXXXX
                  ;;; <@24,#20> store-named-field
82 mov [ecx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
                  ;;; <@26,#22> store-named-field
89 mov [ecx+0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <FixedArray[0]>
                  ;;; <@28,#23> store-named-field
96 mov [ecx+0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <FixedArray[0]>
                  ;;; <@30,#24> store-named-field
103 mov [ecx+0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <undefined>
                  ;;; <@32,#25> store-named-field
110 mov [ecx+0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <undefined>
                  ;;; <@34,#32> check-maps
                  ;;; <@36,#34> check-maps
                  ;;; <@38,#355> inner-allocated-object
117 lea eax,[ecx+0xXXXXXXXX]
                  ;;; <@40,#38> store-named-field
120 mov [eax-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
                  ;;; <@42,#342> constant-d
127 xorps xmm1,xmm1
                  ;;; <@44,#39> store-named-field
130 movsd [eax+0xXXXXXXXX],xmm1
                  ;;; <@46,#41> store-named-field
135 mov [ecx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
142 mov [ecx+0xXXXXXXXX],eax
                  ;;; <@48,#358> inner-allocated-object
145 lea eax,[ecx+0xXXXXXXXX]
                  ;;; <@50,#51> store-named-field
148 mov [eax-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
                  ;;; <@52,#52> store-named-field
155 movsd [eax+0xXXXXXXXX],xmm1
                  ;;; <@54,#54> store-named-field
160 mov [ecx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
167 mov [ecx+0xXXXXXXXX],eax
                  ;;; <@58,#59> -------------------- B2 --------------------
                  ;;; <@59,#59> gap
170 mov eax,[ebp+0xXXXXXXXX]
                  ;;; <@60,#341> check-smi
173 test al,0xXXXXXXXX
175 jnz 450  (0xXXXXXXXX)
                  ;;; <@61,#341> gap
181 mov ebx,[ebp+0xXXXXXXXX]
                  ;;; <@62,#81> check-non-smi
184 test_b bl,0xXXXXXXXX
187 jz 455  (0xXXXXXXXX)
                  ;;; <@64,#82> check-maps
193 cmp [ebx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=2)>
200 jnz 460  (0xXXXXXXXX)
                  ;;; <@66,#83> load-named-field
206 mov edx,[ebx+0xXXXXXXXX]
                  ;;; <@68,#156> load-named-field
209 mov esi,[ebx+0xXXXXXXXX]           ;; debug: position 235
                  ;;; <@69,#156> gap
212 mov [ebp-0xXXXXXXXX],esi
                  ;;; <@70,#180> load-named-field
215 mov edi,[ecx+0xXXXXXXXX]
                  ;;; <@71,#180> gap
218 mov [ebp-0xXXXXXXXX],edi
                  ;;; <@72,#230> load-named-field
221 mov ebx,[ecx+0xXXXXXXXX]           ;; debug: position 237
                  ;;; <@73,#230> gap
224 mov [ebp-0xXXXXXXXX],ebx
                  ;;; <@76,#71> -------------------- B3 (loop header) --------------------
227 mov [ebp-0xXXXXXXXX],eax          ;; debug: position 1483
                  ;;; <@80,#87> -------------------- B4 (unreachable/replaced) --------------------
                  ;;; <@84,#99> -------------------- B5 (unreachable/replaced) --------------------
                  ;;; <@88,#108> -------------------- B6 (unreachable/replaced) --------------------
                  ;;; <@118,#117> -------------------- B7 (unreachable/replaced) --------------------
                  ;;; <@122,#96> -------------------- B8 (unreachable/replaced) --------------------
                  ;;; <@126,#102> -------------------- B9 (unreachable/replaced) --------------------
                  ;;; <@130,#105> -------------------- B10 (unreachable/replaced) --------------------
                  ;;; <@134,#125> -------------------- B11 --------------------
                  ;;; <@137,#126> compare-numeric-and-branch
230 cmp eax,edx                 ;; debug: position 235
232 jnl 355  (0xXXXXXXXX)
                  ;;; <@138,#127> -------------------- B12 (unreachable/replaced) --------------------
                  ;;; <@142,#135> -------------------- B13 (unreachable/replaced) --------------------
                  ;;; <@146,#141> -------------------- B14 --------------------
                  ;;; <@148,#143> stack-check
238 cmp esp,[0xXXXXXXXX]
244 jc 428  (0xXXXXXXXX)
                  ;;; <@150,#158> bounds-check
250 cmp eax,edx
252 jnc 465  (0xXXXXXXXX)
                  ;;; <@151,#158> gap
258 mov ecx,[ebp-0xXXXXXXXX]
                  ;;; <@152,#159> load-keyed
261 mov ebx,[ecx+eax*2+0xXXXXXXXX]
                  ;;; <@156,#163> -------------------- B15 --------------------
                  ;;; <@157,#163> gap
265 mov esi,[ebp-0xXXXXXXXX]
                  ;;; <@158,#181> load-named-field
268 movsd xmm1,[esi+0xXXXXXXXX]
                  ;;; <@160,#188> check-non-smi
273 test_b bl,0xXXXXXXXX
276 jz 470  (0xXXXXXXXX)
                  ;;; <@162,#189> check-maps
282 cmp [ebx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
289 jnz 475  (0xXXXXXXXX)
                  ;;; <@164,#190> load-named-field
295 mov edi,[ebx+0xXXXXXXXX]
                  ;;; <@166,#191> load-named-field
298 movsd xmm2,[edi+0xXXXXXXXX]
                  ;;; <@170,#195> -------------------- B16 (unreachable/replaced) --------------------
                  ;;; <@174,#205> -------------------- B17 (unreachable/replaced) --------------------
                  ;;; <@178,#208> -------------------- B18 (unreachable/replaced) --------------------
                  ;;; <@182,#211> -------------------- B19 (unreachable/replaced) --------------------
                  ;;; <@186,#214> -------------------- B20 --------------------
                  ;;; <@188,#215> add-d
303 addsd xmm1,xmm2             ;; debug: position 237
                  ;;; <@192,#220> -------------------- B21 --------------------
                  ;;; <@194,#224> store-named-field
307 movsd [esi+0xXXXXXXXX],xmm1
                  ;;; <@195,#224> gap
312 mov edi,[ebp-0xXXXXXXXX]
                  ;;; <@196,#231> load-named-field
315 movsd xmm1,[edi+0xXXXXXXXX]
                  ;;; <@198,#240> load-named-field
320 mov ebx,[ebx+0xXXXXXXXX]
                  ;;; <@200,#241> load-named-field
323 movsd xmm2,[ebx+0xXXXXXXXX]
                  ;;; <@204,#245> -------------------- B22 (unreachable/replaced) --------------------
                  ;;; <@208,#255> -------------------- B23 (unreachable/replaced) --------------------
                  ;;; <@212,#258> -------------------- B24 (unreachable/replaced) --------------------
                  ;;; <@216,#261> -------------------- B25 (unreachable/replaced) --------------------
                  ;;; <@220,#264> -------------------- B26 --------------------
                  ;;; <@222,#265> add-d
328 addsd xmm1,xmm2
                  ;;; <@226,#270> -------------------- B27 --------------------
                  ;;; <@228,#274> store-named-field
332 movsd [edi+0xXXXXXXXX],xmm1
                  ;;; <@232,#279> -------------------- B28 (unreachable/replaced) --------------------
                  ;;; <@236,#283> -------------------- B29 (unreachable/replaced) --------------------
                  ;;; <@240,#299> -------------------- B30 (unreachable/replaced) --------------------
                  ;;; <@244,#308> -------------------- B31 (unreachable/replaced) --------------------
                  ;;; <@274,#296> -------------------- B32 (unreachable/replaced) --------------------
                  ;;; <@278,#302> -------------------- B33 (unreachable/replaced) --------------------
                  ;;; <@282,#305> -------------------- B34 (unreachable/replaced) --------------------
                  ;;; <@286,#319> -------------------- B35 --------------------
                  ;;; <@287,#319> gap
337 mov eax,[ebp-0xXXXXXXXX]
                  ;;; <@288,#320> add-i
340 add eax,0xXXXXXXXX
343 jo 480  (0xXXXXXXXX)
                  ;;; <@290,#324> gap
349 mov ecx,eax
                  ;;; <@292,#326> -------------------- B36 --------------------
                  ;;; <@294,#329> gap
351 mov eax,ecx
                  ;;; <@295,#329> goto
353 jmp 227  (0xXXXXXXXX)
                  ;;; <@296,#131> -------------------- B37 (unreachable/replaced) --------------------
                  ;;; <@300,#121> -------------------- B38 (unreachable/replaced) --------------------
                  ;;; <@304,#138> -------------------- B39 (unreachable/replaced) --------------------
                  ;;; <@308,#330> -------------------- B40 --------------------
                  ;;; <@309,#330> gap
355 mov esi,[ebp-0xXXXXXXXX]
358 mov edx,[ebp-0xXXXXXXXX]
                  ;;; <@310,#332> load-named-generic
361 mov ecx,0xXXXXXXXX          ;; object: 0xXXXXXXXX <String[3]: dot>
366 call 0xXXXXXXXX             ;; code: LOAD_IC, UNINITIALIZED
                  ;;; <@312,#333> lazy-bailout
                  ;;; <@314,#335> push-argument
371 push [ebp-0xXXXXXXXX]
                  ;;; <@316,#335> push-argument
374 push [ebp-0xXXXXXXXX]
                  ;;; <@317,#335> gap
377 mov esi,[ebp-0xXXXXXXXX]
380 mov edi,eax
                  ;;; <@318,#336> call-function
382 call 0xXXXXXXXX             ;; code: STUB, CallFunctionStub, argc = 1
                  ;;; <@320,#337> lazy-bailout
                  ;;; <@322,#339> return
387 mov esp,ebp
389 pop ebp
390 ret 0xXXXXXXXX
                  ;;; <@20,#18> -------------------- Deferred allocate --------------------
393 xor ecx,ecx                 ;; debug: position 1483
395 pushad
396 push 0xXXXXXXXX
398 push 0xXXXXXXXX
400 mov esi,[ebp-0xXXXXXXXX]
403 mov eax,0xXXXXXXXX
408 mov ebx,0xXXXXXXXX
413 call 0xXXXXXXXX             ;; code: STUB, CEntryStub, minor: 1
418 mov [esp+0xXXXXXXXX],eax
422 popad
423 jmp 72  (0xXXXXXXXX)
                  ;;; <@148,#143> -------------------- Deferred stack-check --------------------
428 pushad                      ;; debug: position 235
429 mov esi,[ebp-0xXXXXXXXX]
432 xor eax,eax
434 mov ebx,0xXXXXXXXX
439 call 0xXXXXXXXX             ;; code: STUB, CEntryStub, minor: 1
444 popad
445 jmp 250  (0xXXXXXXXX)
                  ;;; -------------------- Jump table --------------------
                  ;;; jump table entry 0: deoptimization bailout 1.
450 call 0xXXXXXXXX             ;; deoptimization bailout 1
                  ;;; jump table entry 1: deoptimization bailout 2.
455 call 0xXXXXXXXX             ;; deoptimization bailout 2
                  ;;; jump table entry 2: deoptimization bailout 3.
460 call 0xXXXXXXXX             ;; deoptimization bailout 3
                  ;;; jump table entry 3: deoptimization bailout 5.
465 call 0xXXXXXXXX             ;; deoptimization bailout 5
                  ;;; jump table entry 4: deoptimization bailout 6.
470 call 0xXXXXXXXX             ;; deoptimization bailout 6
                  ;;; jump table entry 5: deoptimization bailout 7.
475 call 0xXXXXXXXX             ;; deoptimization bailout 7
                  ;;; jump table entry 6: deoptimization bailout 8.
480 call 0xXXXXXXXX             ;; deoptimization bailout 8
485 nop
486 nop
487 nop
488 nop
489 nop
490 nop
491 nop
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 11)
 index  ast id    argc     pc             
     0       3       0     36
     1      35       0     -1
     2      35       0     -1
     3      35       0     -1
     4      39       0    250
     5       2       0     -1
     6       2       0     -1
     7       2       0     -1
     8      60       0     -1
     9      93       0    371
    10      96       0    387

Safepoints (size = 58)
36 (sp -> fp)       0
371 (sp -> fp)       9
387 (sp -> fp)      10
418 | ecx (sp -> fp)  <none> argc: 2
444 (sp -> fp)       4

RelocInfo (size = 931)
0xXXXXXXXX  comment  (;;; Store dynamic frame alignment tag for spilled doubles)
0xXXXXXXXX  comment  (;;; <@0,#0> -------------------- B0 --------------------)
0xXXXXXXXX  comment  (;;; <@2,#1> context)
0xXXXXXXXX  comment  (;;; <@3,#1> gap)
0xXXXXXXXX  comment  (;;; <@14,#10> -------------------- B1 --------------------)
0xXXXXXXXX  comment  (;;; <@15,#10> gap)
0xXXXXXXXX  comment  (;;; <@16,#12> stack-check)
0xXXXXXXXX  code target (BUILTIN)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; <@18,#12> lazy-bailout)
0xXXXXXXXX  comment  (;;; <@20,#18> allocate)
0xXXXXXXXX  position  (1483)
0xXXXXXXXX  comment  (;;; <@21,#18> gap)
0xXXXXXXXX  comment  (;;; <@22,#353> store-named-field)
0xXXXXXXXX  comment  (;;; <@24,#20> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@26,#22> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <FixedArray[0]>)
0xXXXXXXXX  comment  (;;; <@28,#23> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <FixedArray[0]>)
0xXXXXXXXX  comment  (;;; <@30,#24> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <undefined>)
0xXXXXXXXX  comment  (;;; <@32,#25> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <undefined>)
0xXXXXXXXX  comment  (;;; <@34,#32> check-maps)
0xXXXXXXXX  comment  (;;; <@36,#34> check-maps)
0xXXXXXXXX  comment  (;;; <@38,#355> inner-allocated-object)
0xXXXXXXXX  comment  (;;; <@40,#38> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@42,#342> constant-d)
0xXXXXXXXX  comment  (;;; <@44,#39> store-named-field)
0xXXXXXXXX  comment  (;;; <@46,#41> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@48,#358> inner-allocated-object)
0xXXXXXXXX  comment  (;;; <@50,#51> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@52,#52> store-named-field)
0xXXXXXXXX  comment  (;;; <@54,#54> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@58,#59> -------------------- B2 --------------------)
0xXXXXXXXX  comment  (;;; <@59,#59> gap)
0xXXXXXXXX  comment  (;;; <@60,#341> check-smi)
0xXXXXXXXX  comment  (;;; <@61,#341> gap)
0xXXXXXXXX  comment  (;;; <@62,#81> check-non-smi)
0xXXXXXXXX  comment  (;;; <@64,#82> check-maps)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=2)>)
0xXXXXXXXX  comment  (;;; <@66,#83> load-named-field)
0xXXXXXXXX  comment  (;;; <@68,#156> load-named-field)
0xXXXXXXXX  position  (235)
0xXXXXXXXX  comment  (;;; <@69,#156> gap)
0xXXXXXXXX  comment  (;;; <@70,#180> load-named-field)
0xXXXXXXXX  comment  (;;; <@71,#180> gap)
0xXXXXXXXX  comment  (;;; <@72,#230> load-named-field)
0xXXXXXXXX  position  (237)
0xXXXXXXXX  comment  (;;; <@73,#230> gap)
0xXXXXXXXX  position  (1483)
0xXXXXXXXX  comment  (;;; <@76,#71> -------------------- B3 (loop header) --------------------)
0xXXXXXXXX  comment  (;;; <@80,#87> -------------------- B4 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@84,#99> -------------------- B5 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@88,#108> -------------------- B6 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@118,#117> -------------------- B7 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@122,#96> -------------------- B8 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@126,#102> -------------------- B9 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@130,#105> -------------------- B10 (unreachable/replaced) --------------------)
0xXXXXXXXX  position  (235)
0xXXXXXXXX  comment  (;;; <@134,#125> -------------------- B11 --------------------)
0xXXXXXXXX  comment  (;;; <@137,#126> compare-numeric-and-branch)
0xXXXXXXXX  comment  (;;; <@138,#127> -------------------- B12 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@142,#135> -------------------- B13 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@146,#141> -------------------- B14 --------------------)
0xXXXXXXXX  comment  (;;; <@148,#143> stack-check)
0xXXXXXXXX  comment  (;;; <@150,#158> bounds-check)
0xXXXXXXXX  comment  (;;; <@151,#158> gap)
0xXXXXXXXX  comment  (;;; <@152,#159> load-keyed)
0xXXXXXXXX  comment  (;;; <@156,#163> -------------------- B15 --------------------)
0xXXXXXXXX  comment  (;;; <@157,#163> gap)
0xXXXXXXXX  comment  (;;; <@158,#181> load-named-field)
0xXXXXXXXX  comment  (;;; <@160,#188> check-non-smi)
0xXXXXXXXX  comment  (;;; <@162,#189> check-maps)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@164,#190> load-named-field)
0xXXXXXXXX  comment  (;;; <@166,#191> load-named-field)
0xXXXXXXXX  comment  (;;; <@170,#195> -------------------- B16 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@174,#205> -------------------- B17 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@178,#208> -------------------- B18 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@182,#211> -------------------- B19 (unreachable/replaced) --------------------)
0xXXXXXXXX  position  (237)
0xXXXXXXXX  comment  (;;; <@186,#214> -------------------- B20 --------------------)
0xXXXXXXXX  comment  (;;; <@188,#215> add-d)
0xXXXXXXXX  comment  (;;; <@192,#220> -------------------- B21 --------------------)
0xXXXXXXXX  comment  (;;; <@194,#224> store-named-field)
0xXXXXXXXX  comment  (;;; <@195,#224> gap)
0xXXXXXXXX  comment  (;;; <@196,#231> load-named-field)
0xXXXXXXXX  comment  (;;; <@198,#240> load-named-field)
0xXXXXXXXX  comment  (;;; <@200,#241> load-named-field)
0xXXXXXXXX  comment  (;;; <@204,#245> -------------------- B22 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@208,#255> -------------------- B23 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@212,#258> -------------------- B24 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@216,#261> -------------------- B25 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@220,#264> -------------------- B26 --------------------)
0xXXXXXXXX  comment  (;;; <@222,#265> add-d)
0xXXXXXXXX  comment  (;;; <@226,#270> -------------------- B27 --------------------)
0xXXXXXXXX  comment  (;;; <@228,#274> store-named-field)
0xXXXXXXXX  comment  (;;; <@232,#279> -------------------- B28 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@236,#283> -------------------- B29 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@240,#299> -------------------- B30 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@244,#308> -------------------- B31 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@274,#296> -------------------- B32 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@278,#302> -------------------- B33 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@282,#305> -------------------- B34 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@286,#319> -------------------- B35 --------------------)
0xXXXXXXXX  comment  (;;; <@287,#319> gap)
0xXXXXXXXX  comment  (;;; <@288,#320> add-i)
0xXXXXXXXX  comment  (;;; <@290,#324> gap)
0xXXXXXXXX  comment  (;;; <@292,#326> -------------------- B36 --------------------)
0xXXXXXXXX  comment  (;;; <@294,#329> gap)
0xXXXXXXXX  comment  (;;; <@295,#329> goto)
0xXXXXXXXX  comment  (;;; <@296,#131> -------------------- B37 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@300,#121> -------------------- B38 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@304,#138> -------------------- B39 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@308,#330> -------------------- B40 --------------------)
0xXXXXXXXX  comment  (;;; <@309,#330> gap)
0xXXXXXXXX  comment  (;;; <@310,#332> load-named-generic)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <String[3]: dot>)
0xXXXXXXXX  code target (LOAD_IC)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; <@312,#333> lazy-bailout)
0xXXXXXXXX  comment  (;;; <@314,#335> push-argument)
0xXXXXXXXX  comment  (;;; <@316,#335> push-argument)
0xXXXXXXXX  comment  (;;; <@317,#335> gap)
0xXXXXXXXX  comment  (;;; <@318,#336> call-function)
0xXXXXXXXX  code target (STUB)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; <@320,#337> lazy-bailout)
0xXXXXXXXX  comment  (;;; <@322,#339> return)
0xXXXXXXXX  position  (1483)
0xXXXXXXXX  comment  (;;; <@20,#18> -------------------- Deferred allocate --------------------)
0xXXXXXXXX  code target (STUB)  (0xXXXXXXXX)
0xXXXXXXXX  position  (235)
0xXXXXXXXX  comment  (;;; <@148,#143> -------------------- Deferred stack-check --------------------)
0xXXXXXXXX  code target (STUB)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; -------------------- Jump table --------------------)
0xXXXXXXXX  comment  (;;; jump table entry 0: deoptimization bailout 1.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 1)
0xXXXXXXXX  comment  (;;; jump table entry 1: deoptimization bailout 2.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 2)
0xXXXXXXXX  comment  (;;; jump table entry 2: deoptimization bailout 3.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 3)
0xXXXXXXXX  comment  (;;; jump table entry 3: deoptimization bailout 5.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 5)
0xXXXXXXXX  comment  (;;; jump table entry 4: deoptimization bailout 6.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 6)
0xXXXXXXXX  comment  (;;; jump table entry 5: deoptimization bailout 7.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 7)
0xXXXXXXXX  comment  (;;; jump table entry 6: deoptimization bailout 8.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 8)
0xXXXXXXXX  comment  (;;; Safepoint table.)

--- End code ---
--- Raw source ---
(points, start, end) {
  var point = new Point(0, 0);
  for (var i = start; IC$Lt$0(i, IC$Load$5(points)); i = IC$Add$0(i, 1)) {
    IC$Invoke$0(point, IC$Load$6(points, i));
  }
  return point.dot(point);
}

--- Optimized code ---
optimization_id = 1023
source_position = 1446
kind = OPTIMIZED_FUNCTION
name = sum
stack_slots = 12
Instructions (size = 751)
0 xor edx,edx
2 test esp,0xXXXXXXXX
8 jnz 41  (0xXXXXXXXX)
10 push 0xXXXXXXXX
12 mov ebx,esp
14 mov edx,0xXXXXXXXX
19 mov ecx,0xXXXXXXXX
24 mov eax,[ebx+0xXXXXXXXX]
27 mov [ebx],eax
29 add ebx,0xXXXXXXXX
32 dec ecx
33 jnz 24  (0xXXXXXXXX)
35 mov [ebx],0xXXXXXXXX
41 push ebp
42 mov ebp,esp
44 push esi
45 push edi
46 sub esp,0xXXXXXXXX
                  ;;; Store dynamic frame alignment tag for spilled doubles
49 mov [ebp-0xXXXXXXXX],edx
                  ;;; <@0,#0> -------------------- B0 --------------------
                  ;;; <@2,#1> context
52 mov eax,[ebp-0xXXXXXXXX]
                  ;;; <@3,#1> gap
55 mov [ebp-0xXXXXXXXX],eax
                  ;;; <@14,#10> -------------------- B1 --------------------
                  ;;; <@15,#10> gap
58 mov esi,eax
                  ;;; <@16,#12> stack-check
60 cmp esp,[0xXXXXXXXX]
66 jnc 73  (0xXXXXXXXX)
68 call StackCheck  (0xXXXXXXXX)    ;; code: BUILTIN
                  ;;; <@18,#12> lazy-bailout
                  ;;; <@20,#18> allocate
73 mov edx,[0xXXXXXXXX]         ;; debug: position 1483
79 mov eax,edx
81 add eax,0xXXXXXXXX
84 jc 574  (0xXXXXXXXX)
90 cmp eax,[0xXXXXXXXX]
96 ja 574  (0xXXXXXXXX)
102 mov [0xXXXXXXXX],eax
108 inc edx
                  ;;; <@22,#380> store-named-field
109 mov [edx+0xXXXXXXXX],0xXXXXXXXX
                  ;;; <@24,#20> store-named-field
116 mov [edx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
                  ;;; <@26,#22> store-named-field
123 mov [edx+0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <FixedArray[0]>
                  ;;; <@28,#23> store-named-field
130 mov [edx+0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <FixedArray[0]>
                  ;;; <@30,#24> store-named-field
137 mov [edx+0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <undefined>
                  ;;; <@32,#25> store-named-field
144 mov [edx+0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <undefined>
                  ;;; <@34,#32> check-maps
                  ;;; <@36,#34> check-maps
                  ;;; <@38,#382> inner-allocated-object
151 lea eax,[edx+0xXXXXXXXX]
                  ;;; <@40,#38> store-named-field
154 mov [eax-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
                  ;;; <@42,#368> constant-d
161 xorps xmm1,xmm1
                  ;;; <@44,#39> store-named-field
164 movsd [eax+0xXXXXXXXX],xmm1
                  ;;; <@46,#41> store-named-field
169 mov [edx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
176 mov [edx+0xXXXXXXXX],eax
                  ;;; <@48,#385> inner-allocated-object
179 lea eax,[edx+0xXXXXXXXX]
                  ;;; <@50,#51> store-named-field
182 mov [eax-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
                  ;;; <@52,#52> store-named-field
189 movsd [eax+0xXXXXXXXX],xmm1
                  ;;; <@54,#54> store-named-field
194 mov [edx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
201 mov [edx+0xXXXXXXXX],eax
                  ;;; <@57,#58> goto
204 jmp 292  (0xXXXXXXXX)
                  ;;; <@58,#59> -------------------- B2 (unreachable/replaced) --------------------
                  ;;; <@62,#67> -------------------- B3 (OSR entry) --------------------
209 xor edx,edx
211 test ebp,0xXXXXXXXX
217 jz 253  (0xXXXXXXXX)
219 push 0xXXXXXXXX
221 mov ebx,esp
223 mov edx,0xXXXXXXXX
228 mov ecx,0xXXXXXXXX
233 mov eax,[ebx+0xXXXXXXXX]
236 mov [ebx],eax
238 add ebx,0xXXXXXXXX
241 dec ecx
242 jnz 233  (0xXXXXXXXX)
244 mov [ebx],0xXXXXXXXX
250 sub ebp,0xXXXXXXXX
253 push [ebp-0xXXXXXXXX]
256 mov [ebp-0xXXXXXXXX],edx
259 sub esp,0xXXXXXXXX
                  ;;; <@80,#77> context
262 mov esi,[ebp-0xXXXXXXXX]
                  ;;; <@81,#77> gap
265 mov eax,[ebp-0xXXXXXXXX]
                  ;;; <@82,#373> check-smi
268 test al,0xXXXXXXXX
270 jnz 631  (0xXXXXXXXX)
                  ;;; <@84,#79> gap
276 mov edx,[ebp+0xXXXXXXXX]
279 mov edi,[ebp+0xXXXXXXXX]
282 mov ebx,esi
284 mov ecx,[ebp-0xXXXXXXXX]
                  ;;; <@85,#79> goto
287 jmp 314  (0xXXXXXXXX)
                  ;;; <@86,#64> -------------------- B4 --------------------
                  ;;; <@87,#64> gap
292 mov eax,[ebp+0xXXXXXXXX]
                  ;;; <@88,#367> check-smi
295 test al,0xXXXXXXXX
297 jnz 636  (0xXXXXXXXX)
                  ;;; <@90,#66> gap
303 mov ecx,edx
305 mov edx,[ebp+0xXXXXXXXX]
308 mov edi,[ebp+0xXXXXXXXX]
311 mov ebx,[ebp-0xXXXXXXXX]
                  ;;; <@92,#94> -------------------- B5 --------------------
314 mov [ebp-0xXXXXXXXX],edx
317 mov [ebp-0xXXXXXXXX],edi
320 mov [ebp-0xXXXXXXXX],ebx
323 mov [ebp-0xXXXXXXXX],ecx
                  ;;; <@94,#107> check-non-smi
326 test edi,0xXXXXXXXX
332 jz 641  (0xXXXXXXXX)
                  ;;; <@96,#108> check-maps
338 cmp [edi-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=2)>
345 jnz 646  (0xXXXXXXXX)
                  ;;; <@98,#109> load-named-field
351 mov esi,[edi+0xXXXXXXXX]
                  ;;; <@100,#182> load-named-field
354 mov ebx,[edi+0xXXXXXXXX]           ;; debug: position 235
                  ;;; <@101,#182> gap
357 mov [ebp-0xXXXXXXXX],ebx
                  ;;; <@102,#194> check-non-smi
360 test_b cl,0xXXXXXXXX
363 jz 651  (0xXXXXXXXX)
                  ;;; <@104,#195> check-maps
369 cmp [ecx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
376 jnz 656  (0xXXXXXXXX)
                  ;;; <@106,#197> check-maps
                  ;;; <@108,#206> load-named-field
382 mov edi,[ecx+0xXXXXXXXX]
                  ;;; <@109,#206> gap
385 mov [ebp-0xXXXXXXXX],edi
                  ;;; <@110,#256> load-named-field
388 mov edx,[ecx+0xXXXXXXXX]           ;; debug: position 237
                  ;;; <@111,#256> gap
391 mov [ebp-0xXXXXXXXX],edx
                  ;;; <@114,#97> -------------------- B6 (loop header) --------------------
394 mov [ebp-0xXXXXXXXX],eax          ;; debug: position 1483
                  ;;; <@118,#113> -------------------- B7 (unreachable/replaced) --------------------
                  ;;; <@122,#125> -------------------- B8 (unreachable/replaced) --------------------
                  ;;; <@126,#134> -------------------- B9 (unreachable/replaced) --------------------
                  ;;; <@156,#143> -------------------- B10 (unreachable/replaced) --------------------
                  ;;; <@160,#122> -------------------- B11 (unreachable/replaced) --------------------
                  ;;; <@164,#128> -------------------- B12 (unreachable/replaced) --------------------
                  ;;; <@168,#131> -------------------- B13 (unreachable/replaced) --------------------
                  ;;; <@172,#151> -------------------- B14 --------------------
                  ;;; <@175,#152> compare-numeric-and-branch
397 cmp eax,esi                 ;; debug: position 235
399 jnl 522  (0xXXXXXXXX)
                  ;;; <@176,#153> -------------------- B15 (unreachable/replaced) --------------------
                  ;;; <@180,#161> -------------------- B16 (unreachable/replaced) --------------------
                  ;;; <@184,#167> -------------------- B17 --------------------
                  ;;; <@186,#169> stack-check
405 cmp esp,[0xXXXXXXXX]
411 jc 609  (0xXXXXXXXX)
                  ;;; <@188,#184> bounds-check
417 cmp eax,esi
419 jnc 661  (0xXXXXXXXX)
                  ;;; <@189,#184> gap
425 mov ecx,[ebp-0xXXXXXXXX]
                  ;;; <@190,#185> load-keyed
428 mov edx,[ecx+eax*2+0xXXXXXXXX]
                  ;;; <@194,#189> -------------------- B18 --------------------
                  ;;; <@195,#189> gap
432 mov ebx,[ebp-0xXXXXXXXX]
                  ;;; <@196,#207> load-named-field
435 movsd xmm1,[ebx+0xXXXXXXXX]
                  ;;; <@198,#214> check-non-smi
440 test_b dl,0xXXXXXXXX
443 jz 666  (0xXXXXXXXX)
                  ;;; <@200,#215> check-maps
449 cmp [edx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
456 jnz 671  (0xXXXXXXXX)
                  ;;; <@202,#216> load-named-field
462 mov edi,[edx+0xXXXXXXXX]
                  ;;; <@204,#217> load-named-field
465 movsd xmm2,[edi+0xXXXXXXXX]
                  ;;; <@208,#221> -------------------- B19 (unreachable/replaced) --------------------
                  ;;; <@212,#231> -------------------- B20 (unreachable/replaced) --------------------
                  ;;; <@216,#234> -------------------- B21 (unreachable/replaced) --------------------
                  ;;; <@220,#237> -------------------- B22 (unreachable/replaced) --------------------
                  ;;; <@224,#240> -------------------- B23 --------------------
                  ;;; <@226,#241> add-d
470 addsd xmm1,xmm2             ;; debug: position 237
                  ;;; <@230,#246> -------------------- B24 --------------------
                  ;;; <@232,#250> store-named-field
474 movsd [ebx+0xXXXXXXXX],xmm1
                  ;;; <@233,#250> gap
479 mov edi,[ebp-0xXXXXXXXX]
                  ;;; <@234,#257> load-named-field
482 movsd xmm1,[edi+0xXXXXXXXX]
                  ;;; <@236,#266> load-named-field
487 mov edx,[edx+0xXXXXXXXX]
                  ;;; <@238,#267> load-named-field
490 movsd xmm2,[edx+0xXXXXXXXX]
                  ;;; <@242,#271> -------------------- B25 (unreachable/replaced) --------------------
                  ;;; <@246,#281> -------------------- B26 (unreachable/replaced) --------------------
                  ;;; <@250,#284> -------------------- B27 (unreachable/replaced) --------------------
                  ;;; <@254,#287> -------------------- B28 (unreachable/replaced) --------------------
                  ;;; <@258,#290> -------------------- B29 --------------------
                  ;;; <@260,#291> add-d
495 addsd xmm1,xmm2
                  ;;; <@264,#296> -------------------- B30 --------------------
                  ;;; <@266,#300> store-named-field
499 movsd [edi+0xXXXXXXXX],xmm1
                  ;;; <@270,#305> -------------------- B31 (unreachable/replaced) --------------------
                  ;;; <@274,#309> -------------------- B32 (unreachable/replaced) --------------------
                  ;;; <@278,#325> -------------------- B33 (unreachable/replaced) --------------------
                  ;;; <@282,#334> -------------------- B34 (unreachable/replaced) --------------------
                  ;;; <@312,#322> -------------------- B35 (unreachable/replaced) --------------------
                  ;;; <@316,#328> -------------------- B36 (unreachable/replaced) --------------------
                  ;;; <@320,#331> -------------------- B37 (unreachable/replaced) --------------------
                  ;;; <@324,#345> -------------------- B38 --------------------
                  ;;; <@325,#345> gap
504 mov eax,[ebp-0xXXXXXXXX]
                  ;;; <@326,#346> add-i
507 add eax,0xXXXXXXXX
510 jo 676  (0xXXXXXXXX)
                  ;;; <@328,#350> gap
516 mov ecx,eax
                  ;;; <@330,#352> -------------------- B39 --------------------
                  ;;; <@332,#355> gap
518 mov eax,ecx
                  ;;; <@333,#355> goto
520 jmp 394  (0xXXXXXXXX)
                  ;;; <@334,#157> -------------------- B40 (unreachable/replaced) --------------------
                  ;;; <@338,#147> -------------------- B41 (unreachable/replaced) --------------------
                  ;;; <@342,#164> -------------------- B42 (unreachable/replaced) --------------------
                  ;;; <@346,#356> -------------------- B43 --------------------
                  ;;; <@347,#356> gap
522 mov esi,[ebp-0xXXXXXXXX]
525 mov edx,[ebp-0xXXXXXXXX]
528 mov eax,[ebp-0xXXXXXXXX]
                  ;;; <@348,#358> load-named-generic
531 mov ecx,0xXXXXXXXX          ;; object: 0xXXXXXXXX <String[3]: dot>
536 call 0xXXXXXXXX             ;; code: LOAD_IC, UNINITIALIZED
                  ;;; <@350,#359> lazy-bailout
                  ;;; <@352,#361> push-argument
541 push [ebp-0xXXXXXXXX]
                  ;;; <@354,#361> push-argument
544 push [ebp-0xXXXXXXXX]
                  ;;; <@355,#361> gap
547 mov esi,[ebp-0xXXXXXXXX]
550 mov edi,eax
                  ;;; <@356,#362> call-function
552 call 0xXXXXXXXX             ;; code: STUB, CallFunctionStub, argc = 1
                  ;;; <@358,#363> lazy-bailout
                  ;;; <@360,#365> return
557 mov edx,[ebp-0xXXXXXXXX]
560 mov esp,ebp
562 pop ebp
563 cmp edx,0xXXXXXXXX
566 jz 571  (0xXXXXXXXX)
568 ret 0xXXXXXXXX
571 ret 0xXXXXXXXX
                  ;;; <@20,#18> -------------------- Deferred allocate --------------------
574 xor edx,edx                 ;; debug: position 1483
576 pushad
577 push 0xXXXXXXXX
579 push 0xXXXXXXXX
581 mov esi,[ebp-0xXXXXXXXX]
584 mov eax,0xXXXXXXXX
589 mov ebx,0xXXXXXXXX
594 call 0xXXXXXXXX             ;; code: STUB, CEntryStub, minor: 1
599 mov [esp+0xXXXXXXXX],eax
603 popad
604 jmp 109  (0xXXXXXXXX)
                  ;;; <@186,#169> -------------------- Deferred stack-check --------------------
609 pushad                      ;; debug: position 235
610 mov esi,[ebp-0xXXXXXXXX]
613 xor eax,eax
615 mov ebx,0xXXXXXXXX
620 call 0xXXXXXXXX             ;; code: STUB, CEntryStub, minor: 1
625 popad
626 jmp 417  (0xXXXXXXXX)
                  ;;; -------------------- Jump table --------------------
                  ;;; jump table entry 0: deoptimization bailout 2.
631 call 0xXXXXXXXX             ;; deoptimization bailout 2
                  ;;; jump table entry 1: deoptimization bailout 3.
636 call 0xXXXXXXXX             ;; deoptimization bailout 3
                  ;;; jump table entry 2: deoptimization bailout 4.
641 call 0xXXXXXXXX             ;; deoptimization bailout 4
                  ;;; jump table entry 3: deoptimization bailout 5.
646 call 0xXXXXXXXX             ;; deoptimization bailout 5
                  ;;; jump table entry 4: deoptimization bailout 6.
651 call 0xXXXXXXXX             ;; deoptimization bailout 6
                  ;;; jump table entry 5: deoptimization bailout 7.
656 call 0xXXXXXXXX             ;; deoptimization bailout 7
                  ;;; jump table entry 6: deoptimization bailout 9.
661 call 0xXXXXXXXX             ;; deoptimization bailout 9
                  ;;; jump table entry 7: deoptimization bailout 10.
666 call 0xXXXXXXXX             ;; deoptimization bailout 10
                  ;;; jump table entry 8: deoptimization bailout 11.
671 call 0xXXXXXXXX             ;; deoptimization bailout 11
                  ;;; jump table entry 9: deoptimization bailout 12.
676 call 0xXXXXXXXX             ;; deoptimization bailout 12
681 nop
682 nop
683 nop
684 nop
685 nop
686 nop
687 nop
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 15)
 index  ast id    argc     pc             
     0       3       0     73
     1      37       0     -1
     2      35       0     -1
     3      35       0     -1
     4      35       0     -1
     5      35       0     -1
     6      35       0     -1
     7      35       0     -1
     8      39       0    417
     9       2       0     -1
    10       2       0     -1
    11       2       0     -1
    12      60       0     -1
    13      93       0    541
    14      96       0    557

Safepoints (size = 63)
73 (sp -> fp)       0
541 (sp -> fp)      13
557 (sp -> fp)      14
599 | edx (sp -> fp)  <none> argc: 2
625 (sp -> fp)       8

RelocInfo (size = 1036)
0xXXXXXXXX  comment  (;;; Store dynamic frame alignment tag for spilled doubles)
0xXXXXXXXX  comment  (;;; <@0,#0> -------------------- B0 --------------------)
0xXXXXXXXX  comment  (;;; <@2,#1> context)
0xXXXXXXXX  comment  (;;; <@3,#1> gap)
0xXXXXXXXX  comment  (;;; <@14,#10> -------------------- B1 --------------------)
0xXXXXXXXX  comment  (;;; <@15,#10> gap)
0xXXXXXXXX  comment  (;;; <@16,#12> stack-check)
0xXXXXXXXX  code target (BUILTIN)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; <@18,#12> lazy-bailout)
0xXXXXXXXX  comment  (;;; <@20,#18> allocate)
0xXXXXXXXX  position  (1483)
0xXXXXXXXX  comment  (;;; <@22,#380> store-named-field)
0xXXXXXXXX  comment  (;;; <@24,#20> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@26,#22> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <FixedArray[0]>)
0xXXXXXXXX  comment  (;;; <@28,#23> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <FixedArray[0]>)
0xXXXXXXXX  comment  (;;; <@30,#24> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <undefined>)
0xXXXXXXXX  comment  (;;; <@32,#25> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <undefined>)
0xXXXXXXXX  comment  (;;; <@34,#32> check-maps)
0xXXXXXXXX  comment  (;;; <@36,#34> check-maps)
0xXXXXXXXX  comment  (;;; <@38,#382> inner-allocated-object)
0xXXXXXXXX  comment  (;;; <@40,#38> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@42,#368> constant-d)
0xXXXXXXXX  comment  (;;; <@44,#39> store-named-field)
0xXXXXXXXX  comment  (;;; <@46,#41> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@48,#385> inner-allocated-object)
0xXXXXXXXX  comment  (;;; <@50,#51> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@52,#52> store-named-field)
0xXXXXXXXX  comment  (;;; <@54,#54> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@57,#58> goto)
0xXXXXXXXX  comment  (;;; <@58,#59> -------------------- B2 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@62,#67> -------------------- B3 (OSR entry) --------------------)
0xXXXXXXXX  comment  (;;; <@80,#77> context)
0xXXXXXXXX  comment  (;;; <@81,#77> gap)
0xXXXXXXXX  comment  (;;; <@82,#373> check-smi)
0xXXXXXXXX  comment  (;;; <@84,#79> gap)
0xXXXXXXXX  comment  (;;; <@85,#79> goto)
0xXXXXXXXX  comment  (;;; <@86,#64> -------------------- B4 --------------------)
0xXXXXXXXX  comment  (;;; <@87,#64> gap)
0xXXXXXXXX  comment  (;;; <@88,#367> check-smi)
0xXXXXXXXX  comment  (;;; <@90,#66> gap)
0xXXXXXXXX  comment  (;;; <@92,#94> -------------------- B5 --------------------)
0xXXXXXXXX  comment  (;;; <@94,#107> check-non-smi)
0xXXXXXXXX  comment  (;;; <@96,#108> check-maps)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=2)>)
0xXXXXXXXX  comment  (;;; <@98,#109> load-named-field)
0xXXXXXXXX  comment  (;;; <@100,#182> load-named-field)
0xXXXXXXXX  position  (235)
0xXXXXXXXX  comment  (;;; <@101,#182> gap)
0xXXXXXXXX  comment  (;;; <@102,#194> check-non-smi)
0xXXXXXXXX  comment  (;;; <@104,#195> check-maps)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@106,#197> check-maps)
0xXXXXXXXX  comment  (;;; <@108,#206> load-named-field)
0xXXXXXXXX  comment  (;;; <@109,#206> gap)
0xXXXXXXXX  comment  (;;; <@110,#256> load-named-field)
0xXXXXXXXX  position  (237)
0xXXXXXXXX  comment  (;;; <@111,#256> gap)
0xXXXXXXXX  position  (1483)
0xXXXXXXXX  comment  (;;; <@114,#97> -------------------- B6 (loop header) --------------------)
0xXXXXXXXX  comment  (;;; <@118,#113> -------------------- B7 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@122,#125> -------------------- B8 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@126,#134> -------------------- B9 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@156,#143> -------------------- B10 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@160,#122> -------------------- B11 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@164,#128> -------------------- B12 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@168,#131> -------------------- B13 (unreachable/replaced) --------------------)
0xXXXXXXXX  position  (235)
0xXXXXXXXX  comment  (;;; <@172,#151> -------------------- B14 --------------------)
0xXXXXXXXX  comment  (;;; <@175,#152> compare-numeric-and-branch)
0xXXXXXXXX  comment  (;;; <@176,#153> -------------------- B15 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@180,#161> -------------------- B16 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@184,#167> -------------------- B17 --------------------)
0xXXXXXXXX  comment  (;;; <@186,#169> stack-check)
0xXXXXXXXX  comment  (;;; <@188,#184> bounds-check)
0xXXXXXXXX  comment  (;;; <@189,#184> gap)
0xXXXXXXXX  comment  (;;; <@190,#185> load-keyed)
0xXXXXXXXX  comment  (;;; <@194,#189> -------------------- B18 --------------------)
0xXXXXXXXX  comment  (;;; <@195,#189> gap)
0xXXXXXXXX  comment  (;;; <@196,#207> load-named-field)
0xXXXXXXXX  comment  (;;; <@198,#214> check-non-smi)
0xXXXXXXXX  comment  (;;; <@200,#215> check-maps)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@202,#216> load-named-field)
0xXXXXXXXX  comment  (;;; <@204,#217> load-named-field)
0xXXXXXXXX  comment  (;;; <@208,#221> -------------------- B19 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@212,#231> -------------------- B20 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@216,#234> -------------------- B21 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@220,#237> -------------------- B22 (unreachable/replaced) --------------------)
0xXXXXXXXX  position  (237)
0xXXXXXXXX  comment  (;;; <@224,#240> -------------------- B23 --------------------)
0xXXXXXXXX  comment  (;;; <@226,#241> add-d)
0xXXXXXXXX  comment  (;;; <@230,#246> -------------------- B24 --------------------)
0xXXXXXXXX  comment  (;;; <@232,#250> store-named-field)
0xXXXXXXXX  comment  (;;; <@233,#250> gap)
0xXXXXXXXX  comment  (;;; <@234,#257> load-named-field)
0xXXXXXXXX  comment  (;;; <@236,#266> load-named-field)
0xXXXXXXXX  comment  (;;; <@238,#267> load-named-field)
0xXXXXXXXX  comment  (;;; <@242,#271> -------------------- B25 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@246,#281> -------------------- B26 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@250,#284> -------------------- B27 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@254,#287> -------------------- B28 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@258,#290> -------------------- B29 --------------------)
0xXXXXXXXX  comment  (;;; <@260,#291> add-d)
0xXXXXXXXX  comment  (;;; <@264,#296> -------------------- B30 --------------------)
0xXXXXXXXX  comment  (;;; <@266,#300> store-named-field)
0xXXXXXXXX  comment  (;;; <@270,#305> -------------------- B31 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@274,#309> -------------------- B32 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@278,#325> -------------------- B33 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@282,#334> -------------------- B34 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@312,#322> -------------------- B35 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@316,#328> -------------------- B36 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@320,#331> -------------------- B37 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@324,#345> -------------------- B38 --------------------)
0xXXXXXXXX  comment  (;;; <@325,#345> gap)
0xXXXXXXXX  comment  (;;; <@326,#346> add-i)
0xXXXXXXXX  comment  (;;; <@328,#350> gap)
0xXXXXXXXX  comment  (;;; <@330,#352> -------------------- B39 --------------------)
0xXXXXXXXX  comment  (;;; <@332,#355> gap)
0xXXXXXXXX  comment  (;;; <@333,#355> goto)
0xXXXXXXXX  comment  (;;; <@334,#157> -------------------- B40 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@338,#147> -------------------- B41 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@342,#164> -------------------- B42 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@346,#356> -------------------- B43 --------------------)
0xXXXXXXXX  comment  (;;; <@347,#356> gap)
0xXXXXXXXX  comment  (;;; <@348,#358> load-named-generic)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <String[3]: dot>)
0xXXXXXXXX  code target (LOAD_IC)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; <@350,#359> lazy-bailout)
0xXXXXXXXX  comment  (;;; <@352,#361> push-argument)
0xXXXXXXXX  comment  (;;; <@354,#361> push-argument)
0xXXXXXXXX  comment  (;;; <@355,#361> gap)
0xXXXXXXXX  comment  (;;; <@356,#362> call-function)
0xXXXXXXXX  code target (STUB)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; <@358,#363> lazy-bailout)
0xXXXXXXXX  comment  (;;; <@360,#365> return)
0xXXXXXXXX  position  (1483)
0xXXXXXXXX  comment  (;;; <@20,#18> -------------------- Deferred allocate --------------------)
0xXXXXXXXX  code target (STUB)  (0xXXXXXXXX)
0xXXXXXXXX  position  (235)
0xXXXXXXXX  comment  (;;; <@186,#169> -------------------- Deferred stack-check --------------------)
0xXXXXXXXX  code target (STUB)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; -------------------- Jump table --------------------)
0xXXXXXXXX  comment  (;;; jump table entry 0: deoptimization bailout 2.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 2)
0xXXXXXXXX  comment  (;;; jump table entry 1: deoptimization bailout 3.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 3)
0xXXXXXXXX  comment  (;;; jump table entry 2: deoptimization bailout 4.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 4)
0xXXXXXXXX  comment  (;;; jump table entry 3: deoptimization bailout 5.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 5)
0xXXXXXXXX  comment  (;;; jump table entry 4: deoptimization bailout 6.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 6)
0xXXXXXXXX  comment  (;;; jump table entry 5: deoptimization bailout 7.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 7)
0xXXXXXXXX  comment  (;;; jump table entry 6: deoptimization bailout 9.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 9)
0xXXXXXXXX  comment  (;;; jump table entry 7: deoptimization bailout 10.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 10)
0xXXXXXXXX  comment  (;;; jump table entry 8: deoptimization bailout 11.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 11)
0xXXXXXXXX  comment  (;;; jump table entry 9: deoptimization bailout 12.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 12)
0xXXXXXXXX  comment  (;;; Safepoint table.)

--- End code ---
sum: 1914
