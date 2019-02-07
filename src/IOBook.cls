% Class names
\ProvidesClass{IOBook}[07/02/2019 v1 IOBook]

% Load basis class
\ifx\pdfoutput\undefined
\LoadClass[dvips, a4paper, 11pt]{book}
\else
\LoadClass[pdftex, a4paper, 11pt]{book}
\fi

% Load graphics support
\usepackage{graphicx}
\graphicspath{{graphics/}}

% Beautify chapters
\usepackage{fancyhdr}
\usepackage{emptypage}