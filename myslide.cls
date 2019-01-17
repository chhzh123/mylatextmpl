% !TeX encoding = UTF-8

%% chhzh123's slide class v0.1 2019/01/17
%
%% myslide.cls
%
%% Copyright 2018--2019 chhzh123

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myslide}[2019/01/17]

% Declaration of options
\DeclareOption{english}{\def\note@english{\relax}}
\ProcessOptions\relax

% Load class
\ifdefined\note@english%
\LoadClass[UTF8]{beamer}%
\else%
\LoadClass[UTF8]{ctexbeamer}%
\fi

\RequirePackage{url}

\newcommand{\fontsm}{\fontsize{8}{9.2}\selectfont}

\usetheme{AnnArbor}
\usefonttheme[onlymath]{serif}
\usecolortheme{crane}