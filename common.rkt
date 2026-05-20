#lang racket/base
(require scribble/base
         scriblib/autobib
         scriblib/footnote
         "bib.rkt"
         scriblib/figure
         (only-in scribble/manual
                  racket))

(provide ~cite citet generate-bibliography in-bib
         (all-from-out "bib.rkt")

         footnote footnote-part

         figure
         figure-ref
         Figure-ref

         racket)

(define-cite ~cite citet generate-bibliography
  ;; #:style number-style
  )

(define-footnote footnote footnote-part)

