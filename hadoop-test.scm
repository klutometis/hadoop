#!/usr/bin/env chicken-scheme

;; [[file:~/prg/scm/hadoop/TODO.org::*Compiling][Compiling:5]]

(use debug expand-full shell)

(define-syntax hadoop
  (syntax-rules ()
    ((_ exp ...)
     (run (hadoop exp ...)))))

(hadoop fs -ls /)

(define-syntax (stream-hadoop kvlist)
  (kvlist-reduce (lambda (key value args)
                   (cons* key value args))
                 '()
                 kvlist))

(define-syntax hadoop-streaming
  (lambda (expression rename compare)
    `(stream-hadoop ,(list `expression))))

;; Compiling:5 ends here
