\ProvidesClass{homework}

\LoadClass[a4paper,10pt]{article}

% warn about bad practices
\usepackage[l2tabu]{nag}
% 2cm top margin
\usepackage[top=2cm]{geometry}
% less overfull-warnings
\usepackage{microtype}

%needed by polyglossia
\usepackage{fontspec}
% replacement for babel
\usepackage{polyglossia}

% make bookmarks, color links blue, remove cyan border
% https://tex.stackexchange.com/a/51349
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    pdfborder={0 0 0},
    urlcolor=blue
}

\setmainlanguage{finnish}

% vim: ft=tex
