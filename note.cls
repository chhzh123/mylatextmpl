% !TeX encoding = UTF-8

%% chhzh123's note class v1.0 2020/03
%
%% note.cls
%
%% Copyright 2018--2020 chhzh123

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}[2019/01/17]

% Declaration of options
\DeclareOption{english}{\def\note@english{\relax}}
\DeclareOption{broad}{\def\note@broad{\relax}}
\DeclareOption{compact}{\def\note@compact{\relax}}
\ProcessOptions\relax

% Pass options
\ifdefined\note@english%
\PassOptionsToClass{scheme=plain}{ctexart}%
\fi

% Load class
\ifdefined\note@english%
\LoadClass[UTF8, 11pt]{article}%
\else%
\LoadClass[UTF8, 11pt]{ctexart}%
\fi

% Layout
\RequirePackage{standalone}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{titling}
\RequirePackage{caption}

% Page style
\pagestyle{plain}

% Page layout
\ifdefined\note@broad
\geometry{top=25.4mm,bottom=25.4mm,left=31.8mm,right=31.8mm} % a4
\else
\geometry{top=20mm,bottom=20mm,left=20mm,right=20mm} % narrow
\fi

% Miscellaneous packages
\RequirePackage{cancel}
\RequirePackage{enumerate}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{float}
\RequirePackage[hyphens]{url}
\RequirePackage[unicode=true,
	colorlinks,
	linkcolor=black,
	anchorcolor=black,
	citecolor=black,
	CJKbookmarks=false]{hyperref}
\RequirePackage{datetime}

% Date format
\newdateformat{builddatemonth}{\THEYEAR.\twodigit{\THEMONTH}}
\newdateformat{builddate}{\THEYEAR\twodigit{\THEMONTH}\twodigit{\THEDAY}}

% Enumerate
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=-1pt,topsep=3pt}
\setitemize[1]{itemsep=-1pt,topsep=3pt}

% Equation display
% \allowdisplaybreaks

% Chinese fonts
\ifdefined\note@english%
\else
\newcommand{\chuhao}{\fontsize{42.2pt}{\baselineskip}\selectfont}%
\newcommand{\xiaochu}{\fontsize{36.1pt}{\baselineskip}\selectfont}%
\newcommand{\yihao}{\fontsize{26.1pt}{\baselineskip}\selectfont}%
\newcommand{\xiaoyi}{\fontsize{24.1pt}{\baselineskip}\selectfont}%
\newcommand{\erhao}{\fontsize{22.1pt}{\baselineskip}\selectfont}%
\newcommand{\xiaoer}{\fontsize{18.1pt}{\baselineskip}\selectfont}%
\newcommand{\sanhao}{\fontsize{16.1pt}{\baselineskip}\selectfont}%
\newcommand{\xiaosan}{\fontsize{15.1pt}{\baselineskip}\selectfont}%
\newcommand{\sihao}{\fontsize{14.1pt}{\baselineskip}\selectfont}%
\newcommand{\xiaosi}{\fontsize{12.1pt}{\baselineskip}\selectfont}%
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}%
\newcommand{\xiaowu}{\fontsize{9.0pt}{\baselineskip}\selectfont}%
\newcommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}%
\newcommand{\xiaoliu}{\fontsize{6.5pt}{\baselineskip}\selectfont}%
\newcommand{\qihao}{\fontsize{5.5pt}{\baselineskip}\selectfont}%
\newcommand{\bahao}{\fontsize{5.0pt}{\baselineskip}\selectfont}%
\RequirePackage{ctex}
\renewcommand{\songti}{\CJKfamily{zhsong}} % 宋体
\renewcommand{\heiti}{\CJKfamily{zhhei}} % 黑体
\renewcommand{\kaishu}{\CJKfamily{zhkai}} % 楷书
\newcommand*{\kaiti}{\CJKfamily{zhkai}} % 楷书
\renewcommand{\fangsong}{\CJKfamily{zhfs}} % 仿宋
\renewcommand{\lishu}{\CJKfamily{zhli}} % 隶书
\renewcommand{\youyuan}{\CJKfamily{zhyou}} % 幼圆
\fi

\ifdefined\note@compact%
% \postauthor{\end{tabular}\par\end{center}\vspace{-40pt}}
\renewcommand\title[1]{\def\chhzhnote@title{#1}}
\renewcommand\author[1]{\def\chhzhnote@author{#1}}

\makeatletter
\def\@maketitle{%
	\vspace{30pt}%
	\begin{center}%
	{\LARGE\chhzhnote@title}%
	\vskip 10pt%
	\chhzhnote@author%
	\end{center}%
}
\makeatother

\RequirePackage{indentfirst}
% Set indent and font size
% \titleformat*{\section}{\fontsize{15pt}{15pt}\selectfont\bfseries}
\titlespacing*{\section}{0pt}{20bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]
% \titleformat*{\subsection}{\fontsize{14pt}{14pt}\selectfont\bfseries}
\titlespacing*{\subsection}{0pt}{12bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]
% \titleformat*{\subsubsection}{\fontsize{12pt}{12pt}\selectfont\bfseries}
\titlespacing*{\subsubsection}{0pt}{12bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]
\fi