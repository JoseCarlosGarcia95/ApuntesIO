% Template made by hola@josecarlos.me

% Información sobre la versión.
\ProvidesClass{IOBook}[08/02/2019 v1 IOBook]

% Modo book
\ifx\pdfoutput\undefined
	\LoadClass[dvips, a4paper, 11pt]{book}
\else
	\LoadClass[pdftex, a4paper, 11pt]{book}
\fi

% Normativa
\usepackage{ifpdf} 
\ifpdf
\pdfpageheight=297mm
\pdfpagewidth=210mm
\else
\setlength{\paperheight}{297mm}
\setlength{\paperwidth}{210mm}
\fi

\setlength{\hoffset}{0.00cm}
\setlength{\voffset}{0.00cm}

\setlength{\oddsidemargin}{0.5cm}
\setlength{\evensidemargin}{0.5cm}
\setlength{\topmargin}{1mm}
\setlength{\headheight}{0.5cm}
\setlength{\headsep}{1.00cm}
\setlength{\textheight}{20.84cm}
\setlength{\textwidth}{13.9cm}
\setlength{\marginparsep}{1mm}
\setlength{\marginparwidth}{3cm}
\setlength{\footskip}{2.36cm}
\setlength{\parindent}{0cm}
\setlength{\baselineskip}{1.5cm}

% Pruebas
\usepackage{lipsum}

% Idioma
\usepackage[utf8]{inputenc}
\usepackage[british,spanish]{babel}

% Para editar los margenes
\usepackage{fancyhdr}
\usepackage{emptypage}

% Gráficos
\usepackage{xcolor,graphicx}

% Citas
\usepackage{cite}


% Título
\newenvironment{alwayssingle}{%
	\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
	\else\newpage\fi}
{\if@restonecol\twocolumn\else\newpage\fi}

% Universidad
\def\university#1{\gdef\@university{#1}}
\university{}

% Degree
\def\degree#1{\gdef\@degree{#1}}
\degree{}

% Logo
\def\logo#1{\gdef\@logo{#1}}
\logo{graficos/university_logo.jpeg}

% Type
\def\type#1{\gdef\@type{#1}}
\type{}

% Type
\def\subdate#1{\gdef\@subdate{#1}}
\subdate{}

% City
\def\city#1{\gdef\@city{#1}}
\city{}

% License
\def\license#1{\gdef\@license{#1}}
\license{}

\usepackage{float}

\usepackage{datetime}
\renewenvironment{maketitle}{
	\pagestyle{empty}
	
	\begin{alwayssingle}
		\begin{center}
			{\huge\textsc{\textbf{\@university}}\vspace*{4mm}\par}
			{\includegraphics[width=3.5cm]{\@logo}}
                        {\rule{\textwidth}{.01cm}}
			{\vspace*{2mm}\par\huge\textsc{\@title}\vspace*{4mm}\par}
                        {\rule{\textwidth}{.01cm}}
			{\vspace*{2mm}\par\textsc{\Large\@author}\vspace*{1mm}\par}
			{
                          \vspace*{6cm}\par
                          \@license
			}
		\end{center}
	\end{alwayssingle}
}{
	\newpage
}
% Resumen
\newenvironment{abstract}%
{
	\cleardoublepage\null\vfill\begin{center}%
\bfseries \abstractname \end{center}}%
{\vfill\null\newpage}

% Dedicatoria
\newenvironment{dedicatoria}
{
	\begin{flushright}\null\vspace{\stretch{1}}
	\itshape
}
{
	\vspace{\stretch{2}}\null\end{flushright}
}

% Capitulos
\usepackage[Bjornstrup]{fncychap}
\ChTitleVar{\bfseries\Large\sf}

% Teoremas, Definiciones, Lemas, Corolarios...
\usepackage{amsmath}
\usepackage{amssymb}