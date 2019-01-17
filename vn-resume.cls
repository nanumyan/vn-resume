% Intro Options
\ProvidesClass{vn-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% \usepackage{fancyhdr}
\AtBeginDocument{\thispagestyle{empty}}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=1cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{graphicx}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{cccccc} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{707070}%{}2b9fff
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary,BoldItalicFont=Roboto-MediumItalic,BoldFont=Roboto-Medium,ItalicFont=Roboto-LightItalic]{Roboto-Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text,BoldItalicFont=RobotoCondensed-Italic,BoldFont=RobotoCondensed-Bold,ItalicFont=RobotoCondensed-LightItalic]{RobotoCondensed-Light}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{%\begin{textblock}{60}(160,5)
\fontsize{5pt}{8pt}\selectfont%
\itshape\color{date} updated on \today
%\end{textblock}
}

\usepackage{tikz}
% Name command
\newcommand{\namesection}[5]{%
  \raggedright
  {\color{subheadings}\sffamily\bfseries\fontsize{28pt}{40pt}\selectfont #1 %
  \fontsize{14pt}{40pt}\selectfont #2
  }
  \vspace{7pt}

  {\itshape #4}
  \vspace{10pt}

  {\itshape\parbox{150mm}{#5}}
  \vspace{15pt}
  
  
  \begin{textblock}{60}(152.5,7.5)
    \centering
    \tikz\node[circle, minimum size=35mm,
           path picture={
               \node at (path picture bounding box.center){
                   \includegraphics[width=35mm]{#3}
               };
           }]{};\\
    % \includegraphics[width=30mm]{#3}
    \lastupdated
  \end{textblock}
  \raggedright
}

% Section separators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\sffamily\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\sffamily\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\sffamily\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\sffamily\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\sffamily\fontsize{10pt}{11pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

