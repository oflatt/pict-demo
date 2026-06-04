# ICFP 2026 Artifact

Name:    **Animated Pictures for Slide Presentations (Functional Pearl): From the Shallows to the Depths of a Domain-Specific Language**

## Artifact Instructions

This artifact gives evidence that
the examples work as described in the paper.
Beyond basic functionality, this artifact gives a series
of examples supporting the claim that
the pict library has aspects of both shallow and deeply
embedded DSL designs. 
We support this claim by showing that pict supports
 defining new pict combinators (as shallow DSLs do)
 and defining new program transformations (as deep DSLs do).

### Setup

Follow the QEMU instructions below to install QEMU and start the VM.
We've set up a gui for this image with xorg and xfce4, which opens on launch.
Use the user name "artifact" and password "password" to login.

The artifact is located at `~/pict-demo`. The `pict-demo` folder contains a `demo.rhm` Rhombus program and some helper files, including `big_steps.rhm`, `small_steps.rhm`, and `magic_move.rhm`. 

### Demo

To run the demo, open a terminal and run `rhombus ~/pict-demo/demo.rhm`.
A slideshow should appear containing each example in sequence.
Click to continue the slideshow and press escape to exit. 


The `demo.rhm` file contains a sequence of examples taken from the paper.
The slides are grouped below to walk you through claims from the paper. 
You can view the source either with `drracket ~/pict-demo/demo.rhm &` in 
the VM or by using your own preferred editor. Expressions that evaluate to
picts in the REPL in DrRacket will show the pict.

**Pict expresses pictures and animations.**

1. **Dragon Curve** — A static fractal, tiled out of little fish, drawn from
   existing pict primitives with no animation. (The `check` forms at the top of
   `demo.rhm` also validate the dragon-curve recursion; a clean
   `raco test -y demo.rhm` in the shell confirms they pass.)
2. **Animated Picts** — A light-blue circle grows from small to large and then
   holds, built with the `animate` primitive.

**Users can define new combinators (the shallow side).**

3. **hilite: A New Combinator** — The text "hilite me!" transitions from plain
   to sitting on a yellow highlight. `hilite` is a new combinator defined in
   `demo.rhm`, not a pict built-in.
4. **wiggle: An Animated Combinator** — The word "wiggling" rocks back and
   forth. A second user-defined combinator, this one animated (defined in
   `wiggle.rhm`).

**Combinators cooperate with deep transformations.**

5. **replace Preserves Layout** — Two rows of circle–square–triangle; in the
   bottom row the middle square gains a yellow border. The circle and triangle
   stay put — `replace` swaps the child while `hilite` preserves its bounding
   box.
6. **Hiliting Still Works After Replacement** — A short highlighted string above a longer
   one. The yellow box resizes to fit the new text, because `hilite` declared
   its child as a `rebuildable` dependency.

**Users can define new transformations (the deep side).**

7. **magic_move** — Two schools of fish rearrange into a row of leaders
   followed by their followers; the shared fish slide smoothly to their new
   positions. `magic_move` is a new program transformation, designed as a client of the DSL in `magic_move.rhm`.

**Combinators and transformation compose.**

1. **magic_move + hilite** — The same rearrangement, now with the school
   highlighted; the highlight animates together with the fish. The shallow-side
   combinator (`hilite`) and the deep-side transformation (`magic_move`) work
   together with no special integration code.

**Larger examples from the paper.**

9. **Small-Step Evaluation** — The fish-drawing expression reduces one step at
   a time: each redex wiggles in place, then morphs into its value. One more
   click reveals the closing caption.
10. **Big-Step Evaluation** — The same expression evaluated big-step: each
    subexpression zooms out to the side, animates, then pops its value back
    into place. Driven by the same evaluation schedule (`eval_tree.rhm`) as the
    small-step slide.

Together, the new pict combinators (`hilite` and `wiggle`) and the new pict transformation (`magic_move`) show off the benefits of pict's hybrid embedding.
The pict library enables new combinators and new transformations to work together.
Under the hood, pict stores an AST annotated with user-provided functions. 
Documentation for pict is available by using `raco docs` and searching for `pict` in the top-left corner. 
The main documentation page is called `Pict: Functional Pictures`.
The full source code of pict is included at `~/racket/share/pkgs/rhombus-pict-lib/rhombus/pict/`.
We invite the reviewer to view the `~/racket/share/pkgs/rhombus-pict-lib/rhombus/pict/private/static.rhm` file in particular, which defines the Pict class.


### Bonus: rhombusblock

We give a small example using `rhombusblock` a macro provided py `pict` to render rhombus code as pictures.
`rhombusblock` works by capturing the syntax provided and calling Rhombus' built-in rendering for Rhombus code, also used by the documentation system.
See `~/racket/share/pkgs/shrubbery-render-lib/shrubbery/define.rhm` for the macro definition.


## QEMU Instructions

QEMU is a hosted virtual machine monitor that can emulate a host processor
via dynamic binary translation. On common host platforms QEMU can also use
a host provided virtualization layer, which is faster than dynamic binary
translation.

QEMU homepage: https://www.qemu.org/

### Installation

#### OSX
``brew install qemu``

#### Debian and Ubuntu Linux
``apt-get install qemu-kvm``

On x86 laptops and server machines you may need to enable the
"Intel Virtualization Technology" setting in your BIOS, as some manufacturers
leave this disabled by default. See Debugging.md for details.


#### Arch Linux

``pacman -Sy qemu``

See the [Arch wiki](https://wiki.archlinux.org/title/QEMU) for more info.

See Debugging.md if you have problems logging into the artifact via SSH.


#### Windows 10

Download and install QEMU via the links at

https://www.qemu.org/download/#windows.

Ensure that `qemu-system-x86_64.exe` is in your path.

Start Bar -> Search -> "Windows Features"
          -> enable "Hyper-V" and "Windows Hypervisor Platform".

Restart your computer.

#### Windows 8

See Debugging.md for Windows 8 install instructions.

### Startup

The base artifact provides a `start.sh` script to start the VM on unix-like
systems and `start.bat` for Windows. Running this script will open a graphical
console on the host machine, and create a virtualized network interface.
On Linux you may need to run with `sudo` to start the VM. If the VM does not
start then check `Debugging.md`

Once the VM has started you can login to the guest system from the host.
Whenever you are asked for a password, the answer is `password`. The default
username is `artifact`.

```
$ ssh -p 5555 artifact@localhost
```

You can also copy files to and from the host using scp.

```
$ scp -P 5555 artifact@localhost:somefile .
```

### Shutdown

To shutdown the guest system cleanly, login to it via ssh and use

```
$ sudo shutdown now
```
