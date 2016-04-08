Thepixeldeveloper\Dotfiles
=========================

[![Author](http://img.shields.io/badge/author-@colonelrosa-blue.svg)](https://twitter.com/colonelrosa)

Selection of dotfiles I find convenient. 

Usage
-----

This tool depends on a linux utility called [stow](http://www.gnu.org/software/stow/manual/stow.html).

1. Clone this repository

``` bash
git clone git@github.com:ThePixelDeveloper/Dotfiles.git ~/Dotfiles
```

2. Install stow

``` bash
brew install stow
```

3. Link dotfiles you want to be activated

``` bash
cd ~/Dotfiles && stow git
```

_Activates the "git" module_
