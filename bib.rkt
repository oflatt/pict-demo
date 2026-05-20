#lang at-exp racket/base
(require scribble/base
         scriblib/autobib)

(provide (all-defined-out))

(module locations racket/base
  (provide (all-defined-out))
  (define pacm "Proceedings of the ACM")
  (define cacm "Communications of the ACM")
  (define popl "Principles of Programming Languages")
  (define pldi "Programming Language Design and Implementation")
  (define gpce "Generative Programming: Concepts and Experiences")
  (define lfp "Lisp and Functional Programming")
  (define icfp "International Conference on Functional Programming")
  (define jfp "Journal of Functional Programming")
  (define ppopp "Principles and Practice of Parallel Programming")
  (define lasc "Lisp and Symbolic Computation")
  (define oopsla "Object-Oriented Programming, Systems, Languages and Applications")
  (define ecoop "European Conference on Object-Oriented Programming")
  (define ismm "International Symposium on Memory Management")
  (define esop "European Symposium on Programming")
  (define aplas "Asian Symposium on Programming Languages and Systems")
  (define toplas "Transactions on Programming Languages and Systems")
  (define sle "Software Language Engineering")
  (define sfp "Scheme and Functional Programming")
  (define tyde "Workshop on Type-Driven Development")
  (define haskell-workshop "Haskell Workshop")
  (define tcs "Theoretical Computer Science")
  (define tfp "Trends in Functional Programming")
  (define ifl "International Conference on Implementation and Application of Functional Languages")
  (define saig "International Workshop on Semantics, Applications, and Implementation of Program Generation")
  (define hosc "Higher-Order and Symbolic Computation")
  (define scp "Science of Computer Programming")
  (define osdi "Operating Systems Design and Implementation")
  (define nsdi "Networked Systems Design and Implementation")
  (define sigmod "SIGMOD Conference")
  (define mlsys "Conference on Machine Learning and Systems")
  (define nips_workshop "NeurIPS Workshop")
  (define asplos "Architectural Support for Programming Languages and Operating Systems"))
(require (submod "." locations))

(define postscript-book
  (make-bib
   #:title "PostScript Language Reference Manual"
   #:author (org-author-name "Adobe Press")
   #:date 1985
   #:doi "10.5555/536871"))

(define opengl-book
  (make-bib
   #:title "OpenGL Programming Guide: The Official Guide to Learning OpenGL, Release 1"
   #:author (authors "Jackie Neider" "Tom Davis")
   #:date 1993
   #:doi "10.5555/562677"))


(define slideshow-paper
  (make-bib
   #:title "Slideshow: Functional Presentations"
   #:author (authors "Robert Bruce Findler" "Matthew Flatt")
   #:location (proceedings-location icfp)
   #:date 2004
   #:doi "10.1145/1016850.1016880"))

(define henderson-pictures
  (make-bib
   #:title "Functional Geometry"
   #:author "Peter Henderson"
   #:location (proceedings-location lfp)
   #:date 1982
   #:doi "10.1145/800068.802148"))

(define MLgraph
  (make-bib
   #:title "The MLgraph System"
   #:author (authors "Emmanuel Chailloux" "Guy Cousineau" "Ascánder Suárez")
   #:date 1997))

(define finne-peyton-jones-pictures
  (make-bib
   #:title "Pictures: A Simple Structured Graphics Model"
   #:author (authors "Sigbjorn Finne" (author-name "Simon" "Peyton Jones"))
   #:location (proceedings-location
               "Glasgow Workshop on Functional Programming")
   #:date 1995
   #:doi "10.14236/ewic/FP1995.6"))

(define slithy-paper
  (make-bib
   #:title "On Creating Animated Presentations"
   #:author (authors "Douglas E. Zongker" "David H. Salesin")
   #:location (proceedings-location "Eurographics/SIGGRAPH Symposium on Computer Animation")
   #:date "2003"
   #:doi "10.2312/SCA03/298-308"))

(define pic-paper
  (make-bib
   #:title "PIC — a Graphics Language for Typesetting, User Manual"
   #:author "Brian W. Kernighan"
   #:location (techrpt-location
               #:institution "AT&T Bell Laboratories"
               #:number "CSTR-116")
   #:date 1991))

(define fpic-paper
  (make-bib
   #:title "A Special-Purpose Language for Picture-Drawing"
   #:author (authors "Samual N. Kamin" "David Hyatt")
   #:location (proceedings-location "USENIX Conference on Domain-Specific Languages")
   #:date 1997
   #:doi "10.5555/1267950.1267973"))

(define dali-paper
  (make-bib
   #:title "A High Level Language Extension for Creating and Controlling Dynamic Pictures"
   #:author "Gregory F. Pfister"
   #:location (proceedings-location "ACM SIGPLAN/SIGGRAPH Symposium on Graphical Languages")
   #:date 1976
   #:doi "10.1145/957199.804725"))

(define gramps-paper
  (make-bib
   #:title "GRAMPS - A Graphics Language Interpreter for Real-Time, Interactive, Three-Dimensional Picture Editing and Animation"
   #:author (authors "T. J. O'Donnell" "Arthur J. Olson")
   #:location (journal-location "Computer Graphics"
                                #:number "15")
   #:date 1981
   #:doi "10.1145/965161.806799"))

(define matlage-gill-time-box
  (make-bib
   #:title "Every Animation Should Have a Beginning, a Middle, and an End"
   #:author (authors "Kevin Matlage" "Andy Gill")
   #:location (proceedings-location tfp)
   #:date 2010
   #:doi "10.1007/978-3-642-22941-1_10"))


(define rhombus-paper
  (make-bib
   #:title "Rhombus: A New Spin on Macros Without All the Parentheses"
   #:author (authors "Matthew Flatt" "Taylor Allred"
                     "Nia Angle" "Stephen De Gabrielle"
                     "Robert Bruce Findler" "Jack Firth"
                     "Kiran Gopinathan" "Ben Greenman"
                     "Siddhartha Kasivajhula" "Alex Knauth"
                     "Jay McCarthy" "Sam Phillips"
                     "Sorawee Porncharoenwase" "Jens Axel Søgaard"
                     "Sam Tobin-Hochstadt")
   #:location (proceedings-location oopsla)
   #:date 2023
   #:doi "10.1145/3622818"))

(define deep-shallow-orig
  (make-bib
   #:title "Experience with Embedding Hardware Description Languages in HOL"
   #:author (authors "Richard Boulton" "Andrew Gordon" "Mike Gordon" "John Harrison"
                     "John Herbert" (author-name "John" "Van Tassel"))
   #:location (proceedings-location
               "International Conference on Theorem Provers in Circuit Design: Theory, Practice and Experience")
   #:date 1992
   #:url "https://dl.acm.org/doi/10.5555/645902.672777"
   ))

(define pan
  (make-bib
   #:title "Compiling Embedded Languages"
   #:author (authors "Conal Elliott" "Sigbjorn Finne" "Oege de Moor")
   #:date 2000
   #:location (proceedings-location saig)
   #:doi "10.5555/645845.668623"))

(define feldspar
  (make-bib
   #:title "The Design and Implementation of Feldspar an Embedded Language for Digital Signal Processing"
   #:author (authors "Emil Axelsson" "Koen Claessen" "Mary Sheeran" "Josef Svenningsson" "David Engdal" "Anders Persson")
   #:date 2010
   #:location (proceedings-location ifl)
   #:doi "10.1007/978-3-642-24276-2_8"))

(define pytorch
  (make-bib
    #:title "PyTorch: An Imperative Style, High-Performance Deep Learning Library"
    #:author (authors "Adam Paszke" "Sam Gross" "Francisco Massa" "Adam Lerer" "James Bradbury" "Gregory Chanan" "Trevor Killeen" "Zeming Lin" "Natalia Gimelshein" "Luca Antiga" "Alban Desmaison" "Andreas Köpf" "Edward Yang" "Zach DeVito" "Martin Raison" "Alykhan Tejani" "Sasank Chilamkurthy" "Benoit Steiner" "Lu Fang" "Junjie Bai" "Soumith Chintala")
    #:date 2019
    #:location (proceedings-location "NeurIPS")
    #:url "https://arxiv.org/abs/1912.01703"))

(define tensorflow
  (make-bib
    #:title "TensorFlow: Large-Scale Machine Learning on Heterogeneous Distributed Systems"
    #:author (authors "Martín Abadi" "Ashish Agarwal" "Paul Barham" "Eugene Brevdo" "Zhifeng Chen" "Craig Citro" "Greg S. Corrado" "Andy Davis" "Jeffrey Dean" "Mat")
    #:date 2016
    #:location (proceedings-location "arXiv")
    #:url "https://arxiv.org/abs/1603.04467"))


(define scala_virtualized
  (make-bib
   #:title "Scala-Virtualized: Linguistic Reuse for Deep Embeddings"
   #:author (authors "Tiark Rompf" "Nada Amin" "Adriaan Moors" "Philipp Haller" "Martin Odersky")
   #:date 2013
   #:location (journal-location hosc #:volume 25)
   #:doi "10.1007/s10990-013-9096-9"))

(define deep-shallow
  (make-bib
   #:title "Folding Domain-Specific Languages: Deep and Shallow Embeddings (Functional Pearl)"
   #:author (authors "Jeremy Gibbons" "Nicolas Wu")
   #:location (proceedings-location icfp)
   #:date 2014
   #:doi "10.1145/2692915.2628138"))

(define yin_yang
  (make-bib
   #:title "Yin-Yang: Concealing the Deep Embedding of DSLs"
   #:author (authors "Vojin Jovanovic" "Amir Shaikhha" "Sandro Stucki" "Vladimir Nikolaev" "Christoph Koch" "Martin Odersky")
   #:date 2014
   #:doi "10.1145/2658761.2658771"
   #:location (proceedings-location gpce)))

(define embedding_by_unembedding
  (make-bib
   #:title "Embedding by Unembedding"
   #:author (authors "Kazutaka Matsuda" "Samantha Frohlich" "Meng Wang" "Nicolas Wu")
   #:date 2023
   #:location (proceedings-location icfp)
   #:doi "10.1145/3607830"))

(define units_and_mixins
  (make-bib
   #:title "Modular Object-Oriented Programming with Units and Mixins"
   #:author (authors "Matthew Flatt" "Robert Bruce Findler")
   #:date 1998
   #:location (proceedings-location icfp)
   #:doi "10.1145/291251.289432"))

(define reynolds_extensibility_problem
  (make-bib
   #:author "John C. Reynolds"
   #:title "User-Defined Types and Procedural Data Structures as Complementary Approaches to Data Abstraction"
   #:date 1975
   #:location (proceedings-location "New Directions in Algorithmic Languages")
   #:doi "10.5555/186677.186680"))

(define cook_extensibility_problem
  (make-bib
   #:author "William R. Cook"
   #:title "Object-Oriented Programming Versus Abstract Data Types"
   #:date 1990
   #:location (proceedings-location "REX School/Workshop on Foundations of Object-Oriented Languages")
   #:doi "10.5555/648142.749835"))
   
(define shriram_extensibility_problem
  (make-bib
   #:author (authors "Shriram Krishamurthi" "Matthias Felleisen" "Daniel P. Friedman")
   #:title "Synthesizing Object-Oriented and Functional Design to Promote Re-Use"
   #:date 1998
   #:location (proceedings-location ecoop)
   #:doi "10.5555/646155.679709"))

(define hudak_embedded_dsl
  (make-bib
   #:author "Paul Hudak"
   #:title "Modular Domain Specific Languages and Tools"
   #:location (proceedings-location "International Conference on Software Reuse")
   #:date 1998
   #:doi "10.5555/551789.853532"))

(define CSS3
  (make-bib
   #:author (org-author-name "WC3 Group")
   #:title "CSS Snapshot 2024"
   #:url "https://www.w3.org/TR/2025/NOTE-css-2024-20250225/"
   #:date 2024))

(define D3
  (make-bib
   #:author (org-author-name "Observable")
   #:title "D3"
   #:url "https://d3js.org/"
   #:date 2011)) ;; date is original version

(define vega_lite
  (make-bib
   #:author (authors "Arvind Satyanarayan" "Dominik Moritz" "Kanit Wongsuphasawat" "Jeffrey Heer")
   #:title "Vega-Lite: A Grammar of Interactive Graphics"
   #:location (proceedings-location "IEEE Transactions on Visualization and Computer Graphics")
   #:date 2016
   #:doi "10.1109/TVCG.2016.2599030"))

(define animated_vega_lite
  (make-bib
   #:author (authors "Jonathan Zong" "Josh Pollock" "Dylan Wootton" "Arvind Satyanarayan")
   #:title "Animated Vega-Lite: Unifying Animation with a Grammar of Interactive Graphics"
   #:location (proceedings-location "IEEE Transactions on Visualization and Computer Graphics")
   #:date 2022
   #:doi "10.1109/TVCG.2022.3209369"))

(define classen_dissertation
  (make-bib
   #:author "Koen Classen"
   #:title "Embedded Languages for Verifying Hardware"
   #:date 2001
   #:location (dissertation-location #:institution "Chalmers University")))

(define felleisen_expressiveness
  (make-bib
   #:author "Matthias Felleisen"
   #:title "On the expressive power of programming languages"
   #:date 1991
   #:location (journal-location scp #:volume 17)))


(define mapreduce
  (make-bib
   #:title "MapReduce: Simplified Data Processing on Large Clusters"
   #:author (authors "Jeffrey Dean" "Sanjay Ghemawat")
   #:date 2004
   #:location (proceedings-location osdi)
   #:url "https://research.google/pubs/pub62/"))

(define react
  (make-bib
   #:author (org-author-name "Meta Platforms, Inc.")
   #:title "React: A JavaScript Library for Building User Interfaces"
   #:date 2013
   #:url "https://react.dev/"))

(define spark-rdd
  (make-bib
   #:title "Resilient Distributed Datasets: A Fault-Tolerant Abstraction for In-Memory Cluster Computing"
   #:author (authors "Matei Zaharia" "Mosharaf Chowdhury" "Michael J. Franklin" "Scott Shenker" "Ion Stoica")
   #:date 2012
   #:location (proceedings-location nsdi)
   #:url "https://www.usenix.org/conference/nsdi12/technical-sessions/presentation/zaharia"))

(define duckdb
  (make-bib
   #:title "DuckDB: an Embeddable Analytical Database"
   #:author (authors "Mark Raasveldt" "Hannes Mühleisen")
   #:date 2019
   #:location (proceedings-location sigmod)
   #:doi "10.1145/3299869.3320212"))

(define duckdb_window
  (make-bib
   #:author (org-author-name "DuckDB Contributors")
   #:title "Window Functions"
   #:date 2026
   #:url "https://duckdb.org/docs/sql/window_functions"))

(define jquery
  (make-bib
   #:author (org-author-name "jQuery Team")
   #:title "jQuery API Documentation"
   #:date 2026
   #:url "https://api.jquery.com/"))

(define autograph
  (make-bib
   #:title "AutoGraph: Imperative-Style Coding with Graph-Based Performance"
   #:author (authors "Dan Moldovan" "James Bradbury" "Eraz Barak" "Andrew Tulloch")
   #:date 2019
   #:location (proceedings-location mlsys)
   #:url "https://mlsys.org/Conferences/2019/doc/2019/167.pdf"))


(define torchscript
  (make-bib
   #:title "TorchScript: A Subset of Python for Model Deployment"
   #:author (authors "Edward Yang" "Jeffrey Zhang" "Yuan Tang" "Yinghai Lu" "Andrew Li" "Ammar Ahmad" "Daniel Ritchie")
   #:date 2019
   #:location (proceedings-location nips_workshop)
   #:url "https://pytorch.org/assets/torchscript.pdf"))


(define torchcompile
  (make-bib
    #:title "PyTorch 2: Faster Machine Learning Through Dynamic Python Bytecode Transformation and Graph Compilation"
    #:author (authors "Ansel" "Jason and Yang" "Edward and He" "Horace and Gimelshein" "Natalia and Jain" "Animesh and Voznesensky" "Michael and Bao" "Bin and Bell" "Peter and Berard" "David and Burovski" "Evgeni and Chauhan" "Geeta and Chourdia" "Anjali and Constable" "Will and Desmaison" "Alban and DeVito" "Zachary and Ellison" "Elias and Feng" "Will and Gong" "Jiong and Gschwind" "Michael and Hirsh" "Brian and Huang" "Sherlock and Kalambarkar" "Kshiteej and Kirsch" "Laurent and Lazos" "Michael and Lezcano" "Mario and Liang" "Yanbo and Liang" "Jason and Lu" "Yinghai and Luk" "C. K. and Maher" "Bert and Pan" "Yunjie and Puhrsch" "Christian and Reso" "Matthias and Saroufim" "Mark and Siraichi" "Marcos Yukio and Suk" "Helen and Zhang" "Shunting and Suo" "Michael and Tillet" "Phil and Zhao" "Xu and Wang" "Eikan and Zhou" "Keren and Zou" "Richard and Wang" "Xiaodong and Mathews" "Ajit and Wen" "William and Chanan" "Gregory and Wu" "Peng and Chintala" "Soumith")
    #:date 2024
   #:location (proceedings-location asplos)
   #:url "https://dl.acm.org/doi/10.1145/3620665.3640366"))

(define numba
  (make-bib
   #:title "Numba: A LLVM-based Python JIT Compiler"
   #:author (authors "Siu Kwan Lam" "Antoine Pitrou" "Stanley Seibert")
   #:date 2015
   #:location (proceedings-location "Workshop on the LLVM Compiler Infrastructure in HPC")
   #:doi "10.1145/2833157.2833162"))

(define pytamaro
  (make-bib
   #:title "Teaching Programming with Graphics: Pitfalls and a Solution"
   #:author (authors "Luca Chiodini" "Juha Sorva" "Matthias Hauswirth")
   #:date 2023
   #:location (proceedings-location "SPLASH-E")
   #:doi "10.1145/3622780.3623646"))
