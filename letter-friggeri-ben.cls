\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{friggeri-letter}[2015/10/31 Cover letter for friggeri resume]


\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{letter}%
}
\ProcessOptions\relax

\LoadClass{letter}


%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage{xcolor}

\definecolor{white}{RGB}{255,255,255}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
\definecolor{fblue}{HTML}{3D539E}
\definecolor{tblue}{HTML}{55ACEE}
\definecolor{lblue}{HTML}{0077B5}
\definecolor{vkblue}{HTML}{A6B8D4}

\ifdefined\@cv@lightheader
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{gray}
  \colorlet{header}{white}
\fi

\ifdefined\@cv@nocolors
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{brown}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fblue}{gray}
  \colorlet{tblue}{gray}
  \colorlet{lblue}{gray}
  \colorlet{vkblue}{gray}
\fi

\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}

%%%%%%%%%
% Fonts %
%%%%%%%%%

\RequirePackage[quiet]{fontspec}
\RequirePackage[math-style=TeX]{unicode-math}

\newfontfamily\bodyfont[]{Roboto}
\newfontfamily\thinfont[]{Roboto Thin}
\newfontfamily\headingfont[]{Roboto Condensed Bold}

\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Mapping=tex-text, Color=textcolor]{Roboto Light}

%\setmathfont{XITS Math}


%%%%%%%%%%
% Header %
%%%%%%%%%%

\RequirePackage{tikz}

\newcommand{\rolefont}{%
  \fontsize{14pt}{24pt}\selectfont%
  \thinfont%
  \color{white}%
}

\newcommand{\header}[5]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth, minimum height=2.8cm] (box) at (current page.north){};
    \node [anchor=center] (name) at (box) {%
      \fontsize{40pt}{72pt}\color{header}%
      {\thinfont #1}{\bodyfont  #2}
    };
    \node [anchor=north] at (name.south) {%
      \fontsize{14pt}{24pt}\color{header}%
      \thinfont #3%
    };
  \end{tikzpicture}
  \vspace{-12\parskip}

  \hspace{-2em}\textbf{\large{%
    \hfill\hfill #4 \hfill {\small\textbullet}%
    \hfill #5 \hfill\hfill %
  }}%

  \vspace{-1ex}
  \par\noindent\hspace{-0.1\textwidth}\rule{1.2\textwidth}{0.4pt}
}


%%%%%%%%%%%%%%
% RECIPIENT  %
%%%%%%%%%%%%%%

\newcommand{\recipient}[3]{%
  \@date\vspace{\parskip}

  {\raggedright #1 \\ #2 \par}%
  \vspace{2\parskip}%
  \ifx&#3&
  \else
    {\raggedright RE: #3 \par}%
    \vspace{2\parskip}%
  \fi
}


%%%%%%%%%%
% INTRO  %
%%%%%%%%%%

\newcommand{\intro}[1]{%
  \ifx&#1&
    To whom it may concern,
  \else
    Dear #1,
  \fi
}


%%%%%%%%%%%%
% CLOSING  %
%%%%%%%%%%%%

\newcommand{\signoff}[2]{%
  #1,\par\vspace{-0.5\parskip}#2
}
