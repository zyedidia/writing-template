---
title: Title
author: Author
date: Date
rhead: Right header
lhead: Left header
geometry: "left=3cm,right=3cm,top=2cm,bottom=2cm"
header-includes:
- |
    ```{=latex}
    \usepackage{float}
    \usepackage{multicol}
    \usepackage{caption,subcaption}
    \usepackage{tikz}
    \usepackage{gnuplot-lua-tikz}
    \newcommand{\hideFromPandoc}[1]{#1}
    \hideFromPandoc{
        \let\Begin\begin
        \let\End\end
    }
    \newenvironment{MulticolFig}
      {\par\medskip\noindent\minipage{\linewidth}}
      {\endminipage\par\medskip}
    ```
---

# Introduction

Citation [@turing1938computable].

```{=latex}
\begin{figure}[H]
\centering
\input{shift_reg.tex}
\end{figure}
```

```{=latex}
\begin{figure}[H]
\centering
\input{sin.tex}
\end{figure}
```

```{=latex}
\Begin{multicols}{2}
\raggedcolumns

We can have one column.

\columnbreak

And we can have a second column.

\End{multicols}
```

# References
