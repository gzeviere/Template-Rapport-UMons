%---------------------- Préambule ----------------------
% Basé sur le travail de Quentin Mertens - Template Rapport UCL
% https://www.overleaf.com/latex/templates/template-rapport-ucl/hgcmvnqxgypv

\LoadClass[a4paper,12pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathtools, amssymb} %Équations et symboles mathématiques
\RequirePackage{siunitx} %(Ex.: \num{2e+9})
\RequirePackage{graphicx, float}
\RequirePackage[justification=centering]{caption} 
\RequirePackage{subcaption}
\RequirePackage{nomencl}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref} %Références cliquable (table des matières, figures, équations) 
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} %Configuration de la page
\RequirePackage{tikz}

%-------------------- Commands ----------------------

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
\newcommand{\fulltitle}[1]{\renewcommand{\fulltitle}{#1}}
\newcommand{\smalltitle}[1]{\renewcommand{\smalltitle}{#1}}
\newcommand{\class}[1]{\renewcommand{\class}{#1}}
\newcommand{\prof}[1]{\renewcommand{\prof}{#1}}
\newcommand{\auth}[1]{\renewcommand{\auth}{#1}}
\newcommand{\assistant}[1]{\renewcommand{\assistant}{#1}}

\newcommand{\margin}{
    \makenomenclature
    \pagestyle{fancy}
    \fancyhf{} %Effacer le template fancy par défault
    
    \fancyheadoffset{1cm} %Dépassement des en-têtes à gauche et à droite par rapport au texte 
    \setlength{\headheight}{2cm}
    \lhead{\includegraphics[scale=0.11]{logos/small-Umons.png}} % ou small-Umons.png
    \rhead{\nouppercase{\leftmark}}
    
    \fancyfootoffset{.5cm} %Dépassement des footer à gauche et à droite par rapport au texte 
    \rfoot{\thepage}
    \lfoot{\smalltitle}
}