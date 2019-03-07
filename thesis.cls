% !TeX encoding = UTF-8

%% chhzh123's thesis class v1.0 2019/03
%
%% thesis.cls
%
%% Copyright 2018--2019 chhzh123

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2019/01/17]

% Declaration of options
\DeclareOption{thesis}{\def\note@thesis{\relax}}
\DeclareOption{report}{\def\note@report{\relax}}
\DeclareOption{reportComp}{\def\note@reportComp{\relax}} % Compact
\DeclareOption{logo}{\def\note@logo{\relax}}
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

% Page style
\pagestyle{plain}

% Page layout
\geometry{top=25.4mm,bottom=25.4mm,left=31.8mm,right=31.8mm} % a4

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

% Enumerate
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=-1pt,topsep=3pt}
\setitemize[1]{itemsep=-1pt,topsep=3pt}

% Equation display
% \allowdisplaybreaks

% Chinese fonts
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

%%%%%%%%%%%%%%%%%%%%  thesis  %%%%%%%%%%%%%%%%%%%%%
\ifdefined\note@thesis
\let\chhzhnote@school\@empty
\let\chhzhnote@authorremark\@empty
\renewcommand\title[1]{\def\chhzhnote@title{#1}}
\renewcommand\author[1]{\def\chhzhnote@author{#1}}
\newcommand\school[1]{\def\chhzhnote@school{#1}}
\newcommand\authorremark[1]{\def\chhzhnote@authorremark{#1}}

\makeatletter
\def\@maketitle{%
	\vspace{20pt}%
	\begin{center}%
	{\heiti\xiaoer\chhzhnote@title}%
	\vskip 15pt%
	{\kaishu\xiaosi\chhzhnote@author%
	\ifx\chhzhnote@authorremark\@empty\else\thanks{\chhzhnote@authorremark}\fi}%
	\vskip 5pt%
	{\ifx\chhzhnote@school\@empty\else\kaishu\xiaowu\chhzhnote@school\fi}%
	\end{center}%
}
\makeatother

\RequirePackage{caption}
\RequirePackage{indentfirst}
\titleformat{\section}{\xiaosi\bfseries}{\arabic{section}~~}{0em}{}
\titleformat{\subsection}{\wuhao\bfseries}{\arabic{section}.\arabic{subsection}~~}{0em}{}
\titleformat{\subsubsection}{\wuhao\bfseries}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}~~}{0em}{}
% \titlespacing*{hcommandi}{hlefti}{hbefore-sepi}{hafter-sepi}[hright-sepi]
\titlespacing*{\section}{0pt}{0.5\baselineskip}{0.5\baselineskip}[0pt]
\titlespacing*{\subsection}{0pt}{1pt}{1pt}[0pt]
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}[0pt]
\captionsetup[figure]{font=small}
\captionsetup[table]{font=small}

\newcommand{\kongge}{\hspace*{1em}}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}

\setlength{\parindent}{2em}
\linespread{1.2}

\RequirePackage{setspace}
\let\oldthebibliography\thebibliography
\let\endoldthebibliography\endthebibliography
\renewenvironment{thebibliography}[1]{
\vskip 20pt
\begin{spacing}{0.8}
  \begin{oldthebibliography}{#1}
  \vskip 10pt
  \xiaowu
    % \setlength{\itemsep}{0.1em}
    % \setlength{\parskip}{0.1em}
}
{
  \end{oldthebibliography}
  \end{spacing}
}

\AtBeginDocument{\songti\wuhao}
\fi

%%%%%%%%%%%%%%%%%%%%  report  %%%%%%%%%%%%%%%%%%%%%
\ifdefined\note@report
\let\chhzhnote@school\@empty
\renewcommand\title[1]{\def\chhzhnote@title{#1}}
\renewcommand\author[1]{\def\chhzhnote@author{#1}}
\newcommand\school[1]{\def\chhzhnote@school{#1}}
\newcommand\classname[1]{\def\chhzhnote@classname{#1}}
\newcommand\stunum[1]{\def\chhzhnote@stunum{#1}}
\newcommand\headercontext[1]{\def\chhzhnote@headercontext{#1}}

\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{afterpage}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\xiaowu\color{gray}{\chhzhnote@headercontext}}

\newdateformat{builddate}{\THEYEAR 年 \THEMONTH 月 \THEDAY 日}

\makeatletter
\def\@maketitle{%
	\clearpage
	\pagestyle{empty}
	\begin{center}%
	\vspace{100pt}%
	{\ifdefined\note@logo\raggedright\includegraphics[width=0.2\linewidth]{SYSU.png}~\\[2cm]\else\qquad\\\qquad\\\vskip 50pt\fi}%
	\vskip 10pt
	{\yihao\textbf{\chhzhnote@title}}%
	\vskip 150pt%
	\begin{spacing}{1.5}
	\xiaoer
	\begin{tabular}{rc}
	\makebox[6.2em][s]{\textbf{学\hspace{\fill}院\hspace{\fill}名\hspace{\fill}称}} ： & \chhzhnote@school\\
	\cline{2-2}\makebox[6.2em][s]{\textbf{专业（班级）}} ： & \chhzhnote@classname\\
	\cline{2-2}\makebox[6.2em][s]{\textbf{学\hspace{\fill}生\hspace{\fill}姓\hspace{\fill}名}} ：& \chhzhnote@author\\
	\cline{2-2}\makebox[6.2em][s]{\textbf{学\hspace{\fill}号}} ： & \chhzhnote@stunum\\
	\cline{2-2}\makebox[6.2em][s]{\textbf{时\hspace{\fill}间}} ： & \builddate\today\\
	\cline{2-2}
	\end{tabular}
	\end{spacing}
	\end{center}%
	\newpage
	\setcounter{page}{1}
	% \thispagestyle{fancy} % need to add after maketitle immediately
}
\makeatother

\RequirePackage{caption}
\RequirePackage{indentfirst}
\captionsetup[figure]{font=small}
\captionsetup[table]{font=small}
\titleformat{\section}{\xiaosi\bfseries}{\chinese{section}、 }{0em}{}
\titleformat{\subsection}{\wuhao\bfseries}{\arabic{subsection}.~~}{0em}{}
\titleformat{\subsubsection}{\wuhao\bfseries}{(\roman{subsubsection})~~}{0em}{}
\titlespacing*{\section}{0pt}{0.1\baselineskip}{0.1\baselineskip}[0pt]
\titlespacing*{\subsection}{0pt}{0pt}{0pt}[0pt]
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}[0pt]

\newcommand{\kongge}{\hspace*{1em}}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}

\setlength{\parindent}{2em}
\linespread{1.2}

\AtBeginDocument{\songti\wuhao}
\fi

%%%%%%%%%%%%%%%%%%%%  reportComp  %%%%%%%%%%%%%%%%%%%%%
\ifdefined\note@reportComp
\let\chhzhnote@school\@empty
\let\chhzhnote@authorremark\@empty
\renewcommand\title[1]{\def\chhzhnote@title{#1}}
\newcommand\subtitle[1]{\def\chhzhnote@subtitle{#1}}
\renewcommand\author[1]{\def\chhzhnote@author{#1}}
\newcommand\school[1]{\def\chhzhnote@school{#1}}
\newcommand\classname[1]{\def\chhzhnote@classname{#1}}
\newcommand\stunum[1]{\def\chhzhnote@stunum{#1}}
\newcommand\headercontext[1]{\def\chhzhnote@headercontext{#1}}
\newcommand\authorremark[1]{\def\chhzhnote@authorremark{#1}}

\newdateformat{builddate}{\THEYEAR年\THEMONTH月\THEDAY日}
\def\appendixconfig{\titleformat{\section}{\xiaosi\bfseries}{\appendixname~\thesection .}{0em}{}}

\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{afterpage}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\xiaowu\color{gray}{\chhzhnote@headercontext}}

\makeatletter
\def\@maketitle{%
	{\ifdefined\note@logo\raggedright\includegraphics[width=0.2\linewidth]{SYSU.png}~\\[2cm]\else\@empty\fi}%
	\vspace{-90pt}
	\begin{center}%
	{\heiti\xiaoer\chhzhnote@title}%
	\vskip 10pt%
	{\heiti\xiaosan\chhzhnote@subtitle}%
	\vskip 1pt%
	{\ifx\chhzhnote@school\@empty\else\kaishu\xiaowu\chhzhnote@school\fi%
	\ifx\chhzhnote@classname\@empty\else\kaishu\xiaowu\quad\chhzhnote@classname\fi%
	}%
	\vspace{-1pt}
	{\\\kaishu\wuhao\chhzhnote@stunum\quad\chhzhnote@author%
	\ifx\chhzhnote@authorremark\@empty\else\thanks{\chhzhnote@authorremark}\fi}%
	\end{center}%
}
\makeatother

\RequirePackage{caption}
\RequirePackage{indentfirst}
\captionsetup[figure]{font=small}
\captionsetup[table]{font=small}
\titleformat{\section}{\xiaosi\bfseries}{\chinese{section}、 }{0em}{}
\titleformat{\subsection}{\wuhao\bfseries}{\arabic{subsection}.~~}{0em}{}
\titleformat{\subsubsection}{\wuhao\bfseries}{(\roman{subsubsection})~~}{0em}{}
\titlespacing*{\section}{0pt}{0.1\baselineskip}{0.1\baselineskip}[0pt]
\titlespacing*{\subsection}{0pt}{0pt}{0pt}[0pt]
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}[0pt]

\newcommand{\kongge}{\hspace*{1em}}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}

\setlength{\parindent}{2em}
\linespread{1.2}

\AtBeginDocument{\songti\wuhao}
\fi