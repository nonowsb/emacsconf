Best Emacs commands
===================

Global
------

* C-u <number>

Repeat (number peut etre négatif pour inverser la demande)

Code
----

* Alt + ; (M-;)
Comment region / Uncomment region

Indent
------

* C-M-o
Split the current line at point (split-line). The text on the line after point becomes a new line, indented to the same column where point is located. This command first moves point forward over any spaces and tabs. Afterward, point is positioned before the inserted newline.

* C-x <TAB>
This command is used to change the indentation of all lines that begin in the region, moving the affected lines as a “rigid” unit.
If called with no argument, the command activates a transient mode for adjusting the indentation of the affected lines interactively. While this transient mode is active, typing <LEFT> or <RIGHT> indents leftward and rightward, respectively, by one space. You can also type S-<LEFT> or S-<RIGHT> to indent leftward or rightward to the next tab stop (see Tab Stops). Typing any other key disables the transient mode, and resumes normal editing.

If called with a prefix argument n, this command indents the lines forward by n spaces (without enabling the transient mode). Negative values of n indent backward, so you can remove all indentation from the lines in the region using a large negative argument, like this:

          C-u -999 C-x <TAB>
          


Manipulations texte
-------------------

* M-x occur
  e (edit)
  Ctrl+c Ctrl+c (finish)

* Rectangle

** Ctrl + SPACE
C-spc (Marquer un Rectangle bord haut gauche) > position curseur (bord bas droite) > Opération avec Ctrl+x r ... 

** Ctrl+x r t
Rectangle Inserer char en debut de ligne sur plusieurs lignes

** Ctrl+x r k
Rectangle 

** Ctrl+x r y
Rectangle copy

** Ctrl+x r d
Rectangle delete

** Ctrl+x r o
Rectangle delete

** Registers:
C-x r r <char>
C-x r i <char>


Buffers
-------

* winner-mode (save current buffer positions)
to restore
Ctrl+x <-
Ctrl+x ->

* Preserve window layout in Emacs
C-x r w <register>
C-x r j <register>


Links
-----

http://www.cs.colostate.edu/helpdocs/emacs-bindings

http://www.ast.cam.ac.uk/~vasily/idl/emacs_commands_list.html
