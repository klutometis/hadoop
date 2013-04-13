#!/usr/bin/env chicken-scheme

;; [[file:~/prg/scm/hadoop/TODO.org::*Compiling][Compiling:5]]

(use shell)

(define-syntax hadoop
  (syntax-rules ()
    ((_ exp ...)
     (run (hadoop exp ...)))))

(hadoop fs -ls /)

;; Compiling:5 ends here
