.PS

log_init

FF1: FlipFlopX(wid 10*L_unit ht FF_ht*L_unit/1.5, D FF,;:;,E:,;:;)
"$S_{in}$" at FF1.W2.end rjust
FF2: FlipFlopX(wid 10*L_unit ht FF_ht*L_unit/1.5, D FF,;:;,E:,;:;) with .W2.end at FF1.E2.end
FF3: FlipFlopX(wid 10*L_unit ht FF_ht*L_unit/1.5, D FF,;:;,E:,;:;) with .W2.end at FF2.E2.end

corner(,at FF3.E2.end)
move right_ linewid

FF4: FlipFlopX(wid 10*L_unit ht FF_ht*L_unit/1.5, D FF,;:;,E:,;:;) with .W2.end at Here

"$\ldots$" at FF3.E2.end+(linewid/2,0)

line from FF4.E2.end right_ linewid/2; "$S_{out}$" ljust

line from FF1.E2.end down_ linewid; "$q_0$" below
line from FF2.E2.end down_ linewid; "$q_1$" below
line from FF3.E2.end down_ linewid; "$q_2$" below
line from FF4.E2.end down_ linewid; "$q_{N-1}$" below

corner(,at FF4.N1.end)
line from FF4.N1.end to (FF1.W2.end,FF4.N1.end)
"$clk$" rjust

.PE
