--- Raw source ---
(points, start, end) {
  var point = new Point(0, 0);
  for (var i = start; i < end; i++) {
    point.add(points[i])
  }
  return point.dot(point);
}

--- Optimized code ---
optimization_id = 166
source_position = 244
kind = OPTIMIZED_FUNCTION
name = sum
stack_slots = 6
Instructions (size = 546)
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
36 mov ecx,[0xXXXXXXXX]         ;; debug: position 281
42 mov eax,ecx
44 add eax,0xXXXXXXXX
47 jc 389  (0xXXXXXXXX)
53 cmp eax,[0xXXXXXXXX]
59 ja 389  (0xXXXXXXXX)
65 mov [0xXXXXXXXX],eax
71 inc ecx
                  ;;; <@21,#18> gap
72 mov [ebp-0xXXXXXXXX],ecx
                  ;;; <@22,#158> store-named-field
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
                  ;;; <@38,#160> inner-allocated-object
117 lea eax,[ecx+0xXXXXXXXX]
                  ;;; <@40,#38> store-named-field
120 mov [eax-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
                  ;;; <@42,#152> constant-d
127 xorps xmm1,xmm1
                  ;;; <@44,#39> store-named-field
130 movsd [eax+0xXXXXXXXX],xmm1
                  ;;; <@46,#41> store-named-field
135 mov [ecx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
142 mov [ecx+0xXXXXXXXX],eax
                  ;;; <@48,#163> inner-allocated-object
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
                  ;;; <@60,#150> check-smi
173 test al,0xXXXXXXXX                 ;; debug: position 322
175 jnz 446  (0xXXXXXXXX)
                  ;;; <@61,#150> gap
181 mov edx,[ebp+0xXXXXXXXX]
                  ;;; <@62,#151> check-smi
184 test_b dl,0xXXXXXXXX
187 jnz 451  (0xXXXXXXXX)
                  ;;; <@63,#151> gap
193 mov [ebp-0xXXXXXXXX],edx
196 mov ebx,[ebp+0xXXXXXXXX]
                  ;;; <@64,#90> check-non-smi
199 test_b bl,0xXXXXXXXX
202 jz 456  (0xXXXXXXXX)
                  ;;; <@66,#91> check-maps
208 cmp [ebx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=2)>
215 jnz 461  (0xXXXXXXXX)
                  ;;; <@68,#92> load-named-field
221 mov esi,[ebx+0xXXXXXXXX]
                  ;;; <@69,#92> gap
224 mov [ebp-0xXXXXXXXX],esi
                  ;;; <@70,#93> load-named-field
227 mov edi,[ebx+0xXXXXXXXX]
                  ;;; <@72,#101> load-named-field
230 mov ebx,[ecx+0xXXXXXXXX]
                  ;;; <@73,#101> gap
233 mov [ebp-0xXXXXXXXX],ebx
                  ;;; <@74,#116> load-named-field
236 mov ebx,[ecx+0xXXXXXXXX]
                  ;;; <@76,#70> gap
239 mov ecx,[ebp-0xXXXXXXXX]          ;; debug: position 281
                  ;;; <@78,#71> -------------------- B3 (loop header) --------------------
                  ;;; <@81,#73> compare-numeric-and-branch
242 cmp eax,edx                 ;; debug: position 322
244 jnl 351  (0xXXXXXXXX)
                  ;;; <@82,#74> -------------------- B4 (unreachable/replaced) --------------------
                  ;;; <@86,#80> -------------------- B5 --------------------
                  ;;; <@88,#82> stack-check
250 cmp esp,[0xXXXXXXXX]
256 jc 424  (0xXXXXXXXX)
                  ;;; <@90,#94> bounds-check
262 cmp eax,edi
264 jnc 466  (0xXXXXXXXX)
                  ;;; <@92,#95> load-keyed
270 mov edx,[esi+eax*2+0xXXXXXXXX]
                  ;;; <@94,#102> load-named-field
274 movsd xmm1,[ecx+0xXXXXXXXX]
                  ;;; <@96,#103> check-non-smi
279 test_b dl,0xXXXXXXXX
282 jz 471  (0xXXXXXXXX)
                  ;;; <@98,#104> check-maps
288 cmp [edx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
295 jnz 476  (0xXXXXXXXX)
                  ;;; <@100,#105> load-named-field
301 mov esi,[edx+0xXXXXXXXX]
                  ;;; <@102,#106> load-named-field
304 movsd xmm2,[esi+0xXXXXXXXX]
                  ;;; <@104,#107> add-d
309 addsd xmm2,xmm1
                  ;;; <@106,#112> store-named-field
313 movsd [ecx+0xXXXXXXXX],xmm2
                  ;;; <@108,#117> load-named-field
318 movsd xmm1,[ebx+0xXXXXXXXX]
                  ;;; <@110,#120> load-named-field
323 mov edx,[edx+0xXXXXXXXX]
                  ;;; <@112,#121> load-named-field
326 movsd xmm2,[edx+0xXXXXXXXX]
                  ;;; <@114,#122> add-d
331 addsd xmm2,xmm1
                  ;;; <@116,#127> store-named-field
335 movsd [ebx+0xXXXXXXXX],xmm2
                  ;;; <@120,#132> -------------------- B6 --------------------
                  ;;; <@122,#135> add-i
340 add eax,0xXXXXXXXX                 ;; debug: position 330
                  ;;; <@124,#138> gap
343 mov esi,[ebp-0xXXXXXXXX]
346 mov edx,[ebp-0xXXXXXXXX]
                  ;;; <@125,#138> goto
349 jmp 242  (0xXXXXXXXX)
                  ;;; <@126,#77> -------------------- B7 (unreachable/replaced) --------------------
                  ;;; <@130,#139> -------------------- B8 --------------------
                  ;;; <@131,#139> gap
351 mov esi,[ebp-0xXXXXXXXX]
354 mov edx,[ebp-0xXXXXXXXX]
                  ;;; <@132,#141> load-named-generic
357 mov ecx,0xXXXXXXXX          ;; object: 0xXXXXXXXX <String[3]: dot>
362 call 0xXXXXXXXX             ;; code: LOAD_IC, UNINITIALIZED
                  ;;; <@134,#142> lazy-bailout
                  ;;; <@136,#144> push-argument
367 push [ebp-0xXXXXXXXX]
                  ;;; <@138,#144> push-argument
370 push [ebp-0xXXXXXXXX]
                  ;;; <@139,#144> gap
373 mov esi,[ebp-0xXXXXXXXX]
376 mov edi,eax
                  ;;; <@140,#145> call-function
378 call 0xXXXXXXXX             ;; code: STUB, CallFunctionStub, argc = 1
                  ;;; <@142,#146> lazy-bailout
                  ;;; <@144,#148> return
383 mov esp,ebp
385 pop ebp
386 ret 0xXXXXXXXX
                  ;;; <@20,#18> -------------------- Deferred allocate --------------------
389 xor ecx,ecx                 ;; debug: position 281
391 pushad
392 push 0xXXXXXXXX
394 push 0xXXXXXXXX
396 mov esi,[ebp-0xXXXXXXXX]
399 mov eax,0xXXXXXXXX
404 mov ebx,0xXXXXXXXX
409 call 0xXXXXXXXX             ;; code: STUB, CEntryStub, minor: 1
414 mov [esp+0xXXXXXXXX],eax
418 popad
419 jmp 72  (0xXXXXXXXX)
                  ;;; <@88,#82> -------------------- Deferred stack-check --------------------
424 pushad                      ;; debug: position 322
425 mov esi,[ebp-0xXXXXXXXX]
428 xor eax,eax
430 mov ebx,0xXXXXXXXX
435 call 0xXXXXXXXX             ;; code: STUB, CEntryStub, minor: 1
440 popad
441 jmp 262  (0xXXXXXXXX)
                  ;;; -------------------- Jump table --------------------
                  ;;; jump table entry 0: deoptimization bailout 1.
446 call 0xXXXXXXXX             ;; deoptimization bailout 1
                  ;;; jump table entry 1: deoptimization bailout 2.
451 call 0xXXXXXXXX             ;; deoptimization bailout 2
                  ;;; jump table entry 2: deoptimization bailout 3.
456 call 0xXXXXXXXX             ;; deoptimization bailout 3
                  ;;; jump table entry 3: deoptimization bailout 4.
461 call 0xXXXXXXXX             ;; deoptimization bailout 4
                  ;;; jump table entry 4: deoptimization bailout 6.
466 call 0xXXXXXXXX             ;; deoptimization bailout 6
                  ;;; jump table entry 5: deoptimization bailout 7.
471 call 0xXXXXXXXX             ;; deoptimization bailout 7
                  ;;; jump table entry 6: deoptimization bailout 8.
476 call 0xXXXXXXXX             ;; deoptimization bailout 8
481 nop
482 nop
483 nop
484 nop
485 nop
486 nop
487 nop
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 11)
 index  ast id    argc     pc             
     0       3       0     36
     1      35       0     -1
     2      35       0     -1
     3      35       0     -1
     4      35       0     -1
     5      39       0    262
     6      39       0     -1
     7       2       0     -1
     8       2       0     -1
     9      78       0    367
    10      81       0    383

Safepoints (size = 58)
36 (sp -> fp)       0
367 (sp -> fp)       9
383 (sp -> fp)      10
414 | ecx (sp -> fp)  <none> argc: 2
440 | ecx | ebx | esi (sp -> fp)       5

RelocInfo (size = 684)
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
0xXXXXXXXX  position  (281)
0xXXXXXXXX  comment  (;;; <@21,#18> gap)
0xXXXXXXXX  comment  (;;; <@22,#158> store-named-field)
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
0xXXXXXXXX  comment  (;;; <@38,#160> inner-allocated-object)
0xXXXXXXXX  comment  (;;; <@40,#38> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@42,#152> constant-d)
0xXXXXXXXX  comment  (;;; <@44,#39> store-named-field)
0xXXXXXXXX  comment  (;;; <@46,#41> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@48,#163> inner-allocated-object)
0xXXXXXXXX  comment  (;;; <@50,#51> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@52,#52> store-named-field)
0xXXXXXXXX  comment  (;;; <@54,#54> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@58,#59> -------------------- B2 --------------------)
0xXXXXXXXX  comment  (;;; <@59,#59> gap)
0xXXXXXXXX  comment  (;;; <@60,#150> check-smi)
0xXXXXXXXX  position  (322)
0xXXXXXXXX  comment  (;;; <@61,#150> gap)
0xXXXXXXXX  comment  (;;; <@62,#151> check-smi)
0xXXXXXXXX  comment  (;;; <@63,#151> gap)
0xXXXXXXXX  comment  (;;; <@64,#90> check-non-smi)
0xXXXXXXXX  comment  (;;; <@66,#91> check-maps)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=2)>)
0xXXXXXXXX  comment  (;;; <@68,#92> load-named-field)
0xXXXXXXXX  comment  (;;; <@69,#92> gap)
0xXXXXXXXX  comment  (;;; <@70,#93> load-named-field)
0xXXXXXXXX  comment  (;;; <@72,#101> load-named-field)
0xXXXXXXXX  comment  (;;; <@73,#101> gap)
0xXXXXXXXX  comment  (;;; <@74,#116> load-named-field)
0xXXXXXXXX  comment  (;;; <@76,#70> gap)
0xXXXXXXXX  position  (281)
0xXXXXXXXX  position  (322)
0xXXXXXXXX  comment  (;;; <@78,#71> -------------------- B3 (loop header) --------------------)
0xXXXXXXXX  comment  (;;; <@81,#73> compare-numeric-and-branch)
0xXXXXXXXX  comment  (;;; <@82,#74> -------------------- B4 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@86,#80> -------------------- B5 --------------------)
0xXXXXXXXX  comment  (;;; <@88,#82> stack-check)
0xXXXXXXXX  comment  (;;; <@90,#94> bounds-check)
0xXXXXXXXX  comment  (;;; <@92,#95> load-keyed)
0xXXXXXXXX  comment  (;;; <@94,#102> load-named-field)
0xXXXXXXXX  comment  (;;; <@96,#103> check-non-smi)
0xXXXXXXXX  comment  (;;; <@98,#104> check-maps)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@100,#105> load-named-field)
0xXXXXXXXX  comment  (;;; <@102,#106> load-named-field)
0xXXXXXXXX  comment  (;;; <@104,#107> add-d)
0xXXXXXXXX  comment  (;;; <@106,#112> store-named-field)
0xXXXXXXXX  comment  (;;; <@108,#117> load-named-field)
0xXXXXXXXX  comment  (;;; <@110,#120> load-named-field)
0xXXXXXXXX  comment  (;;; <@112,#121> load-named-field)
0xXXXXXXXX  comment  (;;; <@114,#122> add-d)
0xXXXXXXXX  comment  (;;; <@116,#127> store-named-field)
0xXXXXXXXX  position  (330)
0xXXXXXXXX  comment  (;;; <@120,#132> -------------------- B6 --------------------)
0xXXXXXXXX  comment  (;;; <@122,#135> add-i)
0xXXXXXXXX  comment  (;;; <@124,#138> gap)
0xXXXXXXXX  comment  (;;; <@125,#138> goto)
0xXXXXXXXX  comment  (;;; <@126,#77> -------------------- B7 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@130,#139> -------------------- B8 --------------------)
0xXXXXXXXX  comment  (;;; <@131,#139> gap)
0xXXXXXXXX  comment  (;;; <@132,#141> load-named-generic)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <String[3]: dot>)
0xXXXXXXXX  code target (LOAD_IC)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; <@134,#142> lazy-bailout)
0xXXXXXXXX  comment  (;;; <@136,#144> push-argument)
0xXXXXXXXX  comment  (;;; <@138,#144> push-argument)
0xXXXXXXXX  comment  (;;; <@139,#144> gap)
0xXXXXXXXX  comment  (;;; <@140,#145> call-function)
0xXXXXXXXX  code target (STUB)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; <@142,#146> lazy-bailout)
0xXXXXXXXX  comment  (;;; <@144,#148> return)
0xXXXXXXXX  position  (281)
0xXXXXXXXX  comment  (;;; <@20,#18> -------------------- Deferred allocate --------------------)
0xXXXXXXXX  code target (STUB)  (0xXXXXXXXX)
0xXXXXXXXX  position  (322)
0xXXXXXXXX  comment  (;;; <@88,#82> -------------------- Deferred stack-check --------------------)
0xXXXXXXXX  code target (STUB)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; -------------------- Jump table --------------------)
0xXXXXXXXX  comment  (;;; jump table entry 0: deoptimization bailout 1.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 1)
0xXXXXXXXX  comment  (;;; jump table entry 1: deoptimization bailout 2.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 2)
0xXXXXXXXX  comment  (;;; jump table entry 2: deoptimization bailout 3.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 3)
0xXXXXXXXX  comment  (;;; jump table entry 3: deoptimization bailout 4.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 4)
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
  for (var i = start; i < end; i++) {
    point.add(points[i])
  }
  return point.dot(point);
}

--- Optimized code ---
optimization_id = 184
source_position = 244
kind = OPTIMIZED_FUNCTION
name = sum
stack_slots = 11
Instructions (size = 771)
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
73 mov edx,[0xXXXXXXXX]         ;; debug: position 281
79 mov eax,edx
81 add eax,0xXXXXXXXX
84 jc 591  (0xXXXXXXXX)
90 cmp eax,[0xXXXXXXXX]
96 ja 591  (0xXXXXXXXX)
102 mov [0xXXXXXXXX],eax
108 inc edx
                  ;;; <@22,#186> store-named-field
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
                  ;;; <@38,#188> inner-allocated-object
151 lea eax,[edx+0xXXXXXXXX]
                  ;;; <@40,#38> store-named-field
154 mov [eax-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
                  ;;; <@42,#178> constant-d
161 xorps xmm1,xmm1
                  ;;; <@44,#39> store-named-field
164 movsd [eax+0xXXXXXXXX],xmm1
                  ;;; <@46,#41> store-named-field
169 mov [edx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
176 mov [edx+0xXXXXXXXX],eax
                  ;;; <@48,#191> inner-allocated-object
179 lea eax,[edx+0xXXXXXXXX]
                  ;;; <@50,#51> store-named-field
182 mov [eax-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
                  ;;; <@52,#52> store-named-field
189 movsd [eax+0xXXXXXXXX],xmm1
                  ;;; <@54,#54> store-named-field
194 mov [edx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
201 mov [edx+0xXXXXXXXX],eax
                  ;;; <@57,#58> goto
204 jmp 308  (0xXXXXXXXX)
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
265 mov eax,[ebp+0xXXXXXXXX]
                  ;;; <@82,#183> check-smi
268 test al,0xXXXXXXXX
270 jnz 648  (0xXXXXXXXX)
                  ;;; <@83,#183> gap
276 mov ecx,[ebp-0xXXXXXXXX]
                  ;;; <@84,#184> check-smi
279 test_b cl,0xXXXXXXXX
282 jnz 653  (0xXXXXXXXX)
                  ;;; <@86,#79> gap
288 mov ebx,esi
290 mov esi,[ebp+0xXXXXXXXX]
293 mov edx,[ebp+0xXXXXXXXX]
296 mov edi,eax
298 mov eax,ecx
300 mov ecx,[ebp-0xXXXXXXXX]
                  ;;; <@87,#79> goto
303 jmp 344  (0xXXXXXXXX)
                  ;;; <@88,#64> -------------------- B4 --------------------
                  ;;; <@89,#64> gap
308 mov eax,[ebp+0xXXXXXXXX]
                  ;;; <@90,#176> check-smi
311 test al,0xXXXXXXXX
313 jnz 658  (0xXXXXXXXX)
                  ;;; <@91,#176> gap
319 mov ecx,[ebp+0xXXXXXXXX]
                  ;;; <@92,#177> check-smi
322 test_b cl,0xXXXXXXXX
325 jnz 663  (0xXXXXXXXX)
                  ;;; <@94,#66> gap
331 mov esi,[ebp+0xXXXXXXXX]
334 mov edi,ecx
336 mov ecx,edx
338 mov edx,[ebp+0xXXXXXXXX]
341 mov ebx,[ebp-0xXXXXXXXX]
                  ;;; <@96,#94> -------------------- B5 --------------------
344 mov [ebp-0xXXXXXXXX],esi
347 mov [ebp-0xXXXXXXXX],edx
350 mov [ebp-0xXXXXXXXX],edi
353 mov [ebp-0xXXXXXXXX],ebx
356 mov [ebp-0xXXXXXXXX],ecx
                  ;;; <@98,#110> check-non-smi
359 test_b cl,0xXXXXXXXX               ;; debug: position 322
362 jz 668  (0xXXXXXXXX)
                  ;;; <@100,#111> check-maps
368 cmp [ecx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
375 jnz 673  (0xXXXXXXXX)
                  ;;; <@102,#113> check-maps
                  ;;; <@104,#116> check-non-smi
381 test_b dl,0xXXXXXXXX
384 jz 678  (0xXXXXXXXX)
                  ;;; <@106,#117> check-maps
390 cmp [edx-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=2)>
397 jnz 683  (0xXXXXXXXX)
                  ;;; <@108,#118> load-named-field
403 mov ebx,[edx+0xXXXXXXXX]
                  ;;; <@109,#118> gap
406 mov [ebp-0xXXXXXXXX],ebx
                  ;;; <@110,#119> load-named-field
409 mov esi,[edx+0xXXXXXXXX]
                  ;;; <@112,#127> load-named-field
412 mov edx,[ecx+0xXXXXXXXX]
                  ;;; <@113,#127> gap
415 mov [ebp-0xXXXXXXXX],edx
                  ;;; <@114,#142> load-named-field
418 mov edx,[ecx+0xXXXXXXXX]
                  ;;; <@116,#96> gap
421 mov ecx,[ebp-0xXXXXXXXX]          ;; debug: position 281
                  ;;; <@118,#97> -------------------- B6 (loop header) --------------------
                  ;;; <@121,#99> compare-numeric-and-branch
424 cmp eax,edi                 ;; debug: position 322
426 jnl 536  (0xXXXXXXXX)
                  ;;; <@122,#100> -------------------- B7 (unreachable/replaced) --------------------
                  ;;; <@126,#106> -------------------- B8 --------------------
                  ;;; <@128,#108> stack-check
432 cmp esp,[0xXXXXXXXX]
438 jc 626  (0xXXXXXXXX)
                  ;;; <@130,#120> bounds-check
444 cmp eax,esi
446 jnc 688  (0xXXXXXXXX)
                  ;;; <@132,#121> load-keyed
452 mov edi,[ebx+eax*2+0xXXXXXXXX]
                  ;;; <@134,#128> load-named-field
456 movsd xmm1,[ecx+0xXXXXXXXX]
                  ;;; <@136,#129> check-non-smi
461 test edi,0xXXXXXXXX
467 jz 693  (0xXXXXXXXX)
                  ;;; <@138,#130> check-maps
473 cmp [edi-0xXXXXXXXX],0xXXXXXXXX    ;; object: 0xXXXXXXXX <Map(elements=3)>
480 jnz 698  (0xXXXXXXXX)
                  ;;; <@140,#131> load-named-field
486 mov ebx,[edi+0xXXXXXXXX]
                  ;;; <@142,#132> load-named-field
489 movsd xmm2,[ebx+0xXXXXXXXX]
                  ;;; <@144,#133> add-d
494 addsd xmm2,xmm1
                  ;;; <@146,#138> store-named-field
498 movsd [ecx+0xXXXXXXXX],xmm2
                  ;;; <@148,#143> load-named-field
503 movsd xmm1,[edx+0xXXXXXXXX]
                  ;;; <@150,#146> load-named-field
508 mov ebx,[edi+0xXXXXXXXX]
                  ;;; <@152,#147> load-named-field
511 movsd xmm2,[ebx+0xXXXXXXXX]
                  ;;; <@154,#148> add-d
516 addsd xmm2,xmm1
                  ;;; <@156,#153> store-named-field
520 movsd [edx+0xXXXXXXXX],xmm2
                  ;;; <@160,#158> -------------------- B9 --------------------
                  ;;; <@162,#161> add-i
525 add eax,0xXXXXXXXX                 ;; debug: position 330
                  ;;; <@164,#164> gap
528 mov edi,[ebp-0xXXXXXXXX]
531 mov ebx,[ebp-0xXXXXXXXX]
                  ;;; <@165,#164> goto
534 jmp 424  (0xXXXXXXXX)
                  ;;; <@166,#103> -------------------- B10 (unreachable/replaced) --------------------
                  ;;; <@170,#165> -------------------- B11 --------------------
                  ;;; <@171,#165> gap
536 mov esi,[ebp-0xXXXXXXXX]
539 mov edx,[ebp-0xXXXXXXXX]
542 mov ecx,[ebp-0xXXXXXXXX]
545 mov eax,[ebp-0xXXXXXXXX]
                  ;;; <@172,#167> load-named-generic
548 mov ecx,0xXXXXXXXX          ;; object: 0xXXXXXXXX <String[3]: dot>
553 call 0xXXXXXXXX             ;; code: LOAD_IC, UNINITIALIZED
                  ;;; <@174,#168> lazy-bailout
                  ;;; <@176,#170> push-argument
558 push [ebp-0xXXXXXXXX]
                  ;;; <@178,#170> push-argument
561 push [ebp-0xXXXXXXXX]
                  ;;; <@179,#170> gap
564 mov esi,[ebp-0xXXXXXXXX]
567 mov edi,eax
                  ;;; <@180,#171> call-function
569 call 0xXXXXXXXX             ;; code: STUB, CallFunctionStub, argc = 1
                  ;;; <@182,#172> lazy-bailout
                  ;;; <@184,#174> return
574 mov edx,[ebp-0xXXXXXXXX]
577 mov esp,ebp
579 pop ebp
580 cmp edx,0xXXXXXXXX
583 jz 588  (0xXXXXXXXX)
585 ret 0xXXXXXXXX
588 ret 0xXXXXXXXX
                  ;;; <@20,#18> -------------------- Deferred allocate --------------------
591 xor edx,edx                 ;; debug: position 281
593 pushad
594 push 0xXXXXXXXX
596 push 0xXXXXXXXX
598 mov esi,[ebp-0xXXXXXXXX]
601 mov eax,0xXXXXXXXX
606 mov ebx,0xXXXXXXXX
611 call 0xXXXXXXXX             ;; code: STUB, CEntryStub, minor: 1
616 mov [esp+0xXXXXXXXX],eax
620 popad
621 jmp 109  (0xXXXXXXXX)
                  ;;; <@128,#108> -------------------- Deferred stack-check --------------------
626 pushad                      ;; debug: position 322
627 mov esi,[ebp-0xXXXXXXXX]
630 xor eax,eax
632 mov ebx,0xXXXXXXXX
637 call 0xXXXXXXXX             ;; code: STUB, CEntryStub, minor: 1
642 popad
643 jmp 444  (0xXXXXXXXX)
                  ;;; -------------------- Jump table --------------------
                  ;;; jump table entry 0: deoptimization bailout 2.
648 call 0xXXXXXXXX             ;; deoptimization bailout 2
                  ;;; jump table entry 1: deoptimization bailout 3.
653 call 0xXXXXXXXX             ;; deoptimization bailout 3
                  ;;; jump table entry 2: deoptimization bailout 4.
658 call 0xXXXXXXXX             ;; deoptimization bailout 4
                  ;;; jump table entry 3: deoptimization bailout 5.
663 call 0xXXXXXXXX             ;; deoptimization bailout 5
                  ;;; jump table entry 4: deoptimization bailout 6.
668 call 0xXXXXXXXX             ;; deoptimization bailout 6
                  ;;; jump table entry 5: deoptimization bailout 7.
673 call 0xXXXXXXXX             ;; deoptimization bailout 7
                  ;;; jump table entry 6: deoptimization bailout 8.
678 call 0xXXXXXXXX             ;; deoptimization bailout 8
                  ;;; jump table entry 7: deoptimization bailout 9.
683 call 0xXXXXXXXX             ;; deoptimization bailout 9
                  ;;; jump table entry 8: deoptimization bailout 11.
688 call 0xXXXXXXXX             ;; deoptimization bailout 11
                  ;;; jump table entry 9: deoptimization bailout 12.
693 call 0xXXXXXXXX             ;; deoptimization bailout 12
                  ;;; jump table entry 10: deoptimization bailout 13.
698 call 0xXXXXXXXX             ;; deoptimization bailout 13
703 nop
704 nop
705 nop
706 nop
707 nop
                  ;;; Safepoint table.

Deoptimization Input Data (deopt points = 16)
 index  ast id    argc     pc             
     0       3       0     73
     1      37       0     -1
     2      35       0     -1
     3      35       0     -1
     4      35       0     -1
     5      35       0     -1
     6      35       0     -1
     7      35       0     -1
     8      35       0     -1
     9      35       0     -1
    10      39       0    444
    11      39       0     -1
    12       2       0     -1
    13       2       0     -1
    14      78       0    558
    15      81       0    574

Safepoints (size = 63)
73 (sp -> fp)       0
558 (sp -> fp)      14
574 (sp -> fp)      15
616 | edx (sp -> fp)  <none> argc: 2
642 | ecx | edx | ebx (sp -> fp)      10

RelocInfo (size = 812)
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
0xXXXXXXXX  position  (281)
0xXXXXXXXX  comment  (;;; <@22,#186> store-named-field)
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
0xXXXXXXXX  comment  (;;; <@38,#188> inner-allocated-object)
0xXXXXXXXX  comment  (;;; <@40,#38> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@42,#178> constant-d)
0xXXXXXXXX  comment  (;;; <@44,#39> store-named-field)
0xXXXXXXXX  comment  (;;; <@46,#41> store-named-field)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@48,#191> inner-allocated-object)
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
0xXXXXXXXX  comment  (;;; <@82,#183> check-smi)
0xXXXXXXXX  comment  (;;; <@83,#183> gap)
0xXXXXXXXX  comment  (;;; <@84,#184> check-smi)
0xXXXXXXXX  comment  (;;; <@86,#79> gap)
0xXXXXXXXX  comment  (;;; <@87,#79> goto)
0xXXXXXXXX  comment  (;;; <@88,#64> -------------------- B4 --------------------)
0xXXXXXXXX  comment  (;;; <@89,#64> gap)
0xXXXXXXXX  comment  (;;; <@90,#176> check-smi)
0xXXXXXXXX  comment  (;;; <@91,#176> gap)
0xXXXXXXXX  comment  (;;; <@92,#177> check-smi)
0xXXXXXXXX  comment  (;;; <@94,#66> gap)
0xXXXXXXXX  comment  (;;; <@96,#94> -------------------- B5 --------------------)
0xXXXXXXXX  comment  (;;; <@98,#110> check-non-smi)
0xXXXXXXXX  position  (322)
0xXXXXXXXX  comment  (;;; <@100,#111> check-maps)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@102,#113> check-maps)
0xXXXXXXXX  comment  (;;; <@104,#116> check-non-smi)
0xXXXXXXXX  comment  (;;; <@106,#117> check-maps)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=2)>)
0xXXXXXXXX  comment  (;;; <@108,#118> load-named-field)
0xXXXXXXXX  comment  (;;; <@109,#118> gap)
0xXXXXXXXX  comment  (;;; <@110,#119> load-named-field)
0xXXXXXXXX  comment  (;;; <@112,#127> load-named-field)
0xXXXXXXXX  comment  (;;; <@113,#127> gap)
0xXXXXXXXX  comment  (;;; <@114,#142> load-named-field)
0xXXXXXXXX  comment  (;;; <@116,#96> gap)
0xXXXXXXXX  position  (281)
0xXXXXXXXX  position  (322)
0xXXXXXXXX  comment  (;;; <@118,#97> -------------------- B6 (loop header) --------------------)
0xXXXXXXXX  comment  (;;; <@121,#99> compare-numeric-and-branch)
0xXXXXXXXX  comment  (;;; <@122,#100> -------------------- B7 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@126,#106> -------------------- B8 --------------------)
0xXXXXXXXX  comment  (;;; <@128,#108> stack-check)
0xXXXXXXXX  comment  (;;; <@130,#120> bounds-check)
0xXXXXXXXX  comment  (;;; <@132,#121> load-keyed)
0xXXXXXXXX  comment  (;;; <@134,#128> load-named-field)
0xXXXXXXXX  comment  (;;; <@136,#129> check-non-smi)
0xXXXXXXXX  comment  (;;; <@138,#130> check-maps)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <Map(elements=3)>)
0xXXXXXXXX  comment  (;;; <@140,#131> load-named-field)
0xXXXXXXXX  comment  (;;; <@142,#132> load-named-field)
0xXXXXXXXX  comment  (;;; <@144,#133> add-d)
0xXXXXXXXX  comment  (;;; <@146,#138> store-named-field)
0xXXXXXXXX  comment  (;;; <@148,#143> load-named-field)
0xXXXXXXXX  comment  (;;; <@150,#146> load-named-field)
0xXXXXXXXX  comment  (;;; <@152,#147> load-named-field)
0xXXXXXXXX  comment  (;;; <@154,#148> add-d)
0xXXXXXXXX  comment  (;;; <@156,#153> store-named-field)
0xXXXXXXXX  position  (330)
0xXXXXXXXX  comment  (;;; <@160,#158> -------------------- B9 --------------------)
0xXXXXXXXX  comment  (;;; <@162,#161> add-i)
0xXXXXXXXX  comment  (;;; <@164,#164> gap)
0xXXXXXXXX  comment  (;;; <@165,#164> goto)
0xXXXXXXXX  comment  (;;; <@166,#103> -------------------- B10 (unreachable/replaced) --------------------)
0xXXXXXXXX  comment  (;;; <@170,#165> -------------------- B11 --------------------)
0xXXXXXXXX  comment  (;;; <@171,#165> gap)
0xXXXXXXXX  comment  (;;; <@172,#167> load-named-generic)
0xXXXXXXXX  embedded object  (0xXXXXXXXX <String[3]: dot>)
0xXXXXXXXX  code target (LOAD_IC)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; <@174,#168> lazy-bailout)
0xXXXXXXXX  comment  (;;; <@176,#170> push-argument)
0xXXXXXXXX  comment  (;;; <@178,#170> push-argument)
0xXXXXXXXX  comment  (;;; <@179,#170> gap)
0xXXXXXXXX  comment  (;;; <@180,#171> call-function)
0xXXXXXXXX  code target (STUB)  (0xXXXXXXXX)
0xXXXXXXXX  comment  (;;; <@182,#172> lazy-bailout)
0xXXXXXXXX  comment  (;;; <@184,#174> return)
0xXXXXXXXX  position  (281)
0xXXXXXXXX  comment  (;;; <@20,#18> -------------------- Deferred allocate --------------------)
0xXXXXXXXX  code target (STUB)  (0xXXXXXXXX)
0xXXXXXXXX  position  (322)
0xXXXXXXXX  comment  (;;; <@128,#108> -------------------- Deferred stack-check --------------------)
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
0xXXXXXXXX  comment  (;;; jump table entry 6: deoptimization bailout 8.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 8)
0xXXXXXXXX  comment  (;;; jump table entry 7: deoptimization bailout 9.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 9)
0xXXXXXXXX  comment  (;;; jump table entry 8: deoptimization bailout 11.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 11)
0xXXXXXXXX  comment  (;;; jump table entry 9: deoptimization bailout 12.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 12)
0xXXXXXXXX  comment  (;;; jump table entry 10: deoptimization bailout 13.)
0xXXXXXXXX  runtime entry  (deoptimization bailout 13)
0xXXXXXXXX  comment  (;;; Safepoint table.)

--- End code ---
sum: 1540
