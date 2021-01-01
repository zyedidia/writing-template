set terminal tikz
set samples 300
set output "sin.tex"
plot sin(x) title "$sin(x)$"
set output
