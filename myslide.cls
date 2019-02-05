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
\DeclareOption{metro}{\def\note@metro{\relax}}
\ProcessOptions\relax

% Load class
\ifdefined\note@english%
\LoadClass[UTF8]{beamer}%
\else%
\LoadClass[UTF8]{ctexbeamer}%
\fi

% Packages
\RequirePackage{url}
\RequirePackage{caption}

% Themes
\ifdefined\note@metro%
\usetheme{metropolis}
\else%
\usetheme{AnnArbor}
\fi
\usefonttheme[onlymath]{serif}
\usecolortheme{crane}

% Commands
\newcommand{\fontsm}{\fontsize{8}{9.2}\selectfont}
\newcommand{\mlnode}[1]{\begin{tabular}{@{}c@{}}#1\end{tabular}}

% footlineextra
\makeatletter
% add a macro that saves its argument
\newcommand{\fontfn}{\fontsize{5.1pt}{21.6pt}\selectfont}
\newcommand{\footlineextra}[1]{\gdef\insertfootlineextra{\fontfn #1}}
\newbox\footlineextrabox

% add a beamer template that sets the saved argument in a box.
% The * means that the beamer font and color "footline extra" are automatically added. 
\defbeamertemplate*{footline extra}{default}{
    \begin{beamercolorbox}[ht=2.5ex,dp=1.0ex,leftskip=\Gm@lmargin]{footline extra}
    \insertfootlineextra
    \par\vspace{-15pt}
    \end{beamercolorbox}
}

\addtobeamertemplate{footline}{%
    % set the box with the extra footline material but make it add no vertical space
    \setbox\footlineextrabox=\vbox{\usebeamertemplate*{footline extra}}
    \vskip -\ht\footlineextrabox
    \vskip -\dp\footlineextrabox
    \box\footlineextrabox%
}
{}

% patch \begin{frame} to reset the footline extra material
\let\beamer@original@frame=\frame
\def\frame{\gdef\insertfootlineextra{}\beamer@original@frame}
\footlineextra{}
\makeatother