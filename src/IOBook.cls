% Class names
\ProvidesClass{IOBook}[07/02/2019 v1 IOBook]

% Load basis class
\ifx\pdfoutput\undefined
\LoadClass[dvips, a4paper, 11pt]{book}
\else
\LoadClass[pdftex, a4paper, 11pt]{book}
\fi

% Set length
\usepackage{ifpdf} 
\ifpdf
\pdfpageheight=297mm
\pdfpagewidth=210mm
\else
\setlength{\paperheight}{297mm}
\setlength{\paperwidth}{210mm}
\fi

% Load graphics support
\usepackage{graphicx}
\graphicspath{{graphics/}}

% Beautify chapters
\usepackage{fancyhdr}
\usepackage{emptypage}

% Public license
\usepackage[type={CC},modifier={by-sa},version={3.0}]{doclicense}

% Math symbol support
\usepackage{amsthm}
\usepackage{amsmath}
\usepackage{amssymb}

% Simple title
\usepackage{titlesec, blindtext, color}
\definecolor{gray75}{gray}{0.75}
\newcommand{\hsp}{\hspace{20pt}}
\titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter\hsp\textcolor{gray75}{|}\hsp}{0pt}{\Huge\bfseries}
