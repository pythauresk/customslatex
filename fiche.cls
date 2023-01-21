\NeedsTeXFormat{LaTeX2e}[1995/12/01] % compilation avec XeLateX
\ProvidesClass{fiche}[2022/10/09 v1.00]

% validé le 9 octobre

%---------------------------------------------------------
%-------------Declaration des options---------------------
	
%\ExecuteOptions{} % Options de base
\ProcessOptions\relax % à quoi sert \relax ?

%\PassOptionsToClass{@}{article}  % pour mettre des options à la classe d'origine

\LoadClass[a4paper, twocolumn, landscape]{article} % classe basée sur article

%---------------------------------------------------------
%-------Commandes propres à la classe---------------------
\renewcommand{\maketitle}{% Titre du poly
		\textbf{\@title}	   
}

%%%%%% à revoir
\newcommand{\makeheader}{% Titre du poly
    \chead{\@title \hfill \thepage/\pageref{LastPage}}   
}

\setlength{\parindent}{0pt}% évite les \noindent 
%---------------------------------------------------------
%-------------------Packages requis-----------------------

\RequirePackage{geometry}
\geometry{a4paper,top=1cm,bottom=1cm,right=1cm,left=1cm}

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