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

Follow the QEMU instructions below to install QEMU.
We've set up a gui for this image with xorg and xfce4, which opens on launch.
Use the user name "artifact" and password "password" to login.

The artifact is located at `~/pict-demo`. The `pict-demo` folder contains a `demo.rhm` Rhombus program and some helper files, including `big_steps.rhm`, `small_steps.rhm`, and `magic_move.rhm`. 

### Demo

To run the demo, open a terminal and run `rhombus ~/pict-demo/demo.rhm`.
A slideshow should appear containing each example in sequence.
Click to continue the slideshow and press escape to exit. 


The `demo.rhm` file contains a sequence of examples taken from the paper, showing the different aspects of the pict embedded DSL. 

- `dragon_curve`: First, we give an example pict program using existing pict primitives without animation.
- `TODO`: We given an example animated pict program.
- `hilite`: We define a new pict combinator which hilites text.
- `wiggle`: We define a new pict combinator which animates a picture, making it wiggle.
- `hilite_replaced`: We show that new `hilite` supports pict's replacement helper.
- `magic_move`: We show the definition of a new pict transformation, creating smooth transitions between slides. We show that it works correctly with `hilite`.
- `small_steps`: A more complex example generates an animation for small-step execution of pict code.
- `big_steps` Similarly, we show an example for big-step execution of pict code.

Together, the new pict combinators (hilite and wiggle) and the new pict transformation (magic_move) show off the benefits of pict's hybrid embedding.
The pict library enables new combinators and new transformations to work together.
Under the hood, pict stores an AST annotated with user-provided functions. 
The full source code of pict is included at TODO, with documentation at TODO.
We invite the reviewer to view the `TODO` file in particular, which defines the Pict class. 



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

### Artifact Preparation

Authors should install software dependencies into the VM image as needed,
preferably via the standard Debian package manager. For example, to install
GHC and cabal-install, login to the host and type:

```
$ sudo apt update
$ sudo apt install ghc
$ sudo apt install cabal-install
```

If you really need a GUI then you can install X as follows, but we prefer
console-only artifacts whenever possible.

```
$ sudo apt install xorg
$ sudo apt install xfce4   # or some other window manager
$ startx
```

See Debugging.md for advice on resolving other potential problems.

If your artifact needs lots of memory you may need to increase the value
of the `QEMU_MEM_MB` variable in the `start.sh` script.

When preparing your artifact, please also follow the [Submission
Guidelines](https://icfp25.sigplan.org/track/icfp-2026-artifact-evaluation#Submission-Guidelines).
