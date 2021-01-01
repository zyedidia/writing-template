# Installation

* Latex (in particular, `xelatex`).
    * Latexmk (https://mg.readthedocs.io/latexmk.html).
* Pandoc (https://pandoc.org).
* DPIC (https://gitlab.com/zyedidia/dpic).
* Gnuplot (http://www.gnuplot.info/).

## Install Latex

On MacOS, install MacTex (https://tug.org/mactex/mactex-download.html).

On Linux, install TexLive:

```
sudo apt install texlive
sudo apt install latexmk
```

## Install Pandoc

On MacOS, install Pandoc using Homebrew:

```
brew install pandoc
```

On Linux, install Pandoc by downloading the release binary from their website
(https://github.com/jgm/pandoc/releases/latest). Download the binary called
`pandoc-xxx-linux-amd64.tar.gz`. Untar it (`tar -xf xxx.tar.gz`), and move the
pandoc binaries in `pandoc-xxx/bin` to `/usr/bin`:

```
sudo mv pandoc-xxx/bin/pandoc* /usr/bin
```

## Install dpic

Clone the dpic repository, and install by building from source

```
git clone https://gitlab.com/zyedidia/dpic/
cd dpic
./configure
sudo make install
```

## Install gnuplot

MacOS:

```
brew install gnuplot
```

Linux:

```
sudo apt install gnuplot
```
