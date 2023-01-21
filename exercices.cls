\NeedsTeXFormat{LaTeX2e}[1995/12/01] % compilation avec XeLateX
\ProvidesClass{exercices}[2022/10/02 v1.00]

% validé le 3 octobre

%---------------------------------------------------------
%-------------Declaration des options---------------------

% commentaires ------------------------------------------- 
% deux niveaux de commentaires 
% un premier pour adapter les polycopiés 
% un deuxième pour des commentaires personnels
    
\DeclareOption{commentoff}{
	\newcommand{\commentaire}[1]{}}
\DeclareOption{commenton}{
	\newcommand{\commentaire}[1]{{\color{gray} #1}}}  


% option double page 

\DeclareOption{commenton}{
	\newcommand{\commentaire}[1]{{\color{gray} #1}}}  
	
%\ExecuteOptions{} % Options de base
\ProcessOptions\relax % à quoi sert \relax ?

%\PassOptionsToClass{@}{article}  % pour mettre des options à la classe d'origine

\LoadClass[a4paper, 12pt]{article} % classe basée sur article


%---------------------------------------------------------
%-------------------Packages requis-----------------------

\RequirePackage{geometry}
\geometry{a4paper,top=1cm,bottom=1cm,right=1cm,left=1cm}

\RequirePackage{touleboxe}  % A FAIRE

%---------------------------------------------------------
%-------Commandes propres à la classe---------------------
\renewcommand{\maketitle}{% Titre du poly
    \begin{center}
	   \textbf{\large{\@title}}
    \end{center}   
}

\setlength{\parindent}{0pt}% évite les \noindent 

% doubles pages
\newcommand{\doublepage}[1]{#1 \vfill \lignesep \vfill #1}

%---------------------------------------------------------
%-------------------Environnements------------------------

\theoremstyle{definition} %environnement--------------	
\newtheorem{exo}{Exercice}  
% \setcounter{exo}{0} permet de reset la numérotation

\newenvironment{Rappel}{
    \begin{cadrecode}\textbf{Rappel(s) :}~ }
    {\end{cadrecode}}