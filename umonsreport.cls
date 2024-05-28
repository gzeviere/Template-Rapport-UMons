%---------------------- Préambule ----------------------
% Basé sur le travail de Quentin Mertens - Template Rapport UCL
% https://www.overleaf.com/latex/templates/template-rapport-ucl/hgcmvnqxgypv

\LoadClass[a4paper,12pt]{article}

\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{nomencl}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} %Configuration de la page
\RequirePackage{tikz}
\usepackage{xstring}

%-------------------- Commands ----------------------

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
\newcommand{\fulltitle}[1]{\renewcommand{\fulltitle}{#1}}
\newcommand{\smalltitle}[1]{\renewcommand{\smalltitle}{#1}}
\newcommand{\prof}[1]{\renewcommand{\prof}{#1}}
\newcommand{\auth}[1]{\renewcommand{\auth}{#1}}

\newcommand{\margin}{
    \makenomenclature
    \pagestyle{fancy}
    \fancyheadoffset{1cm}
    \setlength{\headheight}{2cm}
    \lhead{\includegraphics[scale=0.11]{logos/small-Umons.png}} % ou small-Umons.png
    \rhead{\nouppercase{\leftmark}}
    \rfoot{\thepage}
    \cfoot{}
    \lfoot{\smalltitle}
}

\newcommand{\maketitlepg}{
    \begin{titlepage}
        \tikz[remember picture,overlay] \node[opacity=.5,inner sep=0pt] at (current page.center){\includegraphics[height=\paperheight]{logos/background.png}};
        \centering
        \HRule\vspace*{0.5cm}
        {\huge\bfseries\fulltitle}\vspace*{.15cm} 
        \HRule\vspace*{2cm}
        \textbf{Date:}\\
        \today\\[1cm]
        
        \begin{minipage}{0.4\textwidth}
        \begin{flushleft} \large
        \textbf{Auteur:}\\
        \auth
        \end{flushleft}
        \end{minipage}
        ~
        \begin{minipage}{0.4\textwidth}
        \begin{flushright} \large
        \textbf{Professeur:} \\
        \prof
        \end{flushright}
        \end{minipage}
        
        %If you dont want to include professor, uncomment the two following lines and delete both minipages
        %\Large \textbf{Auteur:}\\
        %\auth
        
        \vfill
        \includegraphics[height=2.1cm]{logos/Umons.png}
        \hspace{3cm}
        \includegraphics[height=2.3cm]{logos/FS-nobg.png}
    \end{titlepage}
}