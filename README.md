# WHAT

[Project Euler](http://projecteuler.net/) in Common Lisp.


# USAGE

## SBCL
```
CL-USER> (asdf:load-system :euler)
T
CL-USER> (asdf:test-system :euler)
Doing 39 pending tests of 39 tests total.
 TEST-001 TEST-002 TEST-003 TEST-004 TEST-005 TEST-006 TEST-007 TEST-008
 TEST-009 TEST-010 TEST-011 TEST-012 TEST-013 TEST-014 TEST-015 TEST-016
 TEST-017 TEST-018 TEST-019 TEST-020 TEST-021 TEST-022 TEST-024 TEST-025
 TEST-030 TEST-034 TEST-036 TEST-041 TEST-048 TEST-056 TEST-059 TEST-067
 TEST-079 TEST-097 TEST-100 TEST-108 TEST-187 TEST-204 TEST-255
No tests failed.
T
```


## CCL
When using SLIME the symbol TEST will conflict with PTESTER:TEST.
```
CL-USER> (unintern 'test)
T
```
Now everything should work.
```
CL-USER> (require :asdf)
:ASDF
NIL
CL-USER> (asdf:load-system :euler)
T
CL-USER> (asdf:test-system :euler)
;Compiler warnings for "home:common-lisp;project-euler;contrib;ptester;src.lisp.newest" :
;   In (SETF GC-PRINT-STATE): Unused lexical variable STATE
; Warning: Lisp compilation had style-warnings while compiling #<CL-SOURCE-FILE "ptester" "src">
; While executing: UIOP/LISP-BUILD:CHECK-LISP-COMPILE-WARNINGS, in process repl-thread(13).
Begin ALL-TESTS test
**********************************
End ALL-TESTS test
Errors detected in this test: 0 
Successes this test:43
T
```


## Allegro CL
```
CL-USER> (require :asdf)
NIL
CL-USER> (asdf:load-system :euler)
T
CL-USER> (asdf:test-system :euler)
Begin ALL-TESTS test
**********************************
End ALL-TESTS test
Errors detected in this test: 0 
Successes this test: 43
T
```
