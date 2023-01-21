\NeedsTeXFormat{LaTeX2e}[1995/12/01] % compilation avec XeLateX
\ProvidesClass{cours}[2022/10/03 v1.00]

% validé le 3 octobre

%---------------------------------------------------------
%-------------Declaration des options---------------------

% commentaires ------------------------------------------- 
% deux niveaux de commentaires 
% un premier pour adapter les polycopiés 
% un deuxième pour des commentaires personnels
    
\DeclareOption{commentoff}{
	\newcommand{\commentaire}[1]{}
	\newcommand{\Commentaire}[1]{}}
\DeclareOption{commenton}{
	\newcommand{\commentaire}[1]{{\color{blue} #1}}
	\newcommand{\Commentaire}[1]{}}  
\DeclareOption{Commenton}{
	\newcommand{\commentaire}[1]{{\color{blue} #1}}
	\newcommand{\Commentaire}[1]{{\color{gray} #1}}} 
	
	
%\ExecuteOptions{} % Options de base
\ProcessOptions\relax % à quoi sert \relax ?

\PassOptionsToClass{@}{article}  % pour mettre des options à la classe d'origine

\LoadClass[a4paper, 12pt]{article} % classe basée sur article


%---------------------------------------------------------
%-------Commandes propres à la classe---------------------
\renewcommand{\maketitle}{% Titre du poly
    \vspace{0.8cm}
	\begin{center}
		\Huge{\textbf{\@title}}
	\end{center}
	\vspace{0.5cm}	   
}

\setlength{\parindent}{0pt}% évite les \noindent 
%---------------------------------------------------------
%-------------------Packages requis-----------------------

\RequirePackage{geometry}
\geometry{a4paper,top=1cm,bottom=2cm,right=2cm,left=2cm}

\RequirePackage{touleboxe}


%---------------------------------------------------------
%-------------------Environnements------------------------

% théorèmes 
\RequirePackage[french]{babel}
	
\theoremstyle{plain} 
\newtheorem*{T}{Théorème}
\newtheorem*{DPtion}{Définition/Proposition}
\newtheorem*{Ption}{Proposition}
\newtheorem*{Lm}{Lemme}
\newtheorem*{Cor}{Corollaire}
	
\theoremstyle{definition} 
\newtheorem*{D}{Définition}
\newtheorem*{Pté}{Propriété}
\newtheorem*{Rmq}{Remarque}
\newtheorem*{Ex}{Exemple}
\newtheorem*{App}{Application}

\newtheorem*{exo}{Exercice}
	
%nouveau environnement démonstration théorème
\newenvironment{proofT}{
    {\noindent \it Démonstration.} }
    { \hfill $\blacksquare$ \\}

\newenvironment{proofP}{
    {\noindent \it Démonstration.} }
    { \hfill $\square$ \\}