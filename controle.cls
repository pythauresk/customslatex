\NeedsTeXFormat{LaTeX2e}[1995/12/01] % compilation avec XeLateX
\ProvidesClass{controle}[2022/10/02 v1.1.0]

% validé le 24 décembre 2022
% ajout d'une option pour passer d'un sujet à l'autre

%---------------------------------------------------------
%-------------Declaration des options---------------------
\DeclareOption{correctionoff}{% correction non affichée
    \newcommand{\correction}[2]{#1}}
\DeclareOption{correctionon}{% correction affichée
    \newcommand{\correction}[2]{{\color{red} \noindent  #2}}} 

\DeclareOption{sujetA}{%
    \newcommand{\sujet}[3]{#1}} 
\DeclareOption{sujetB}{%
    \newcommand{\sujet}[3]{#2}} 
\DeclareOption{sujetC}{%
    \newcommand{\sujet}[3]{#3}} 
	
%\ExecuteOptions{} % Options de base
\ProcessOptions\relax % à quoi sert \relax ?

%\PassOptionsToClass{@}{article}  % pour mettre des options à la classe d'origine

\LoadClass[a4paper, 12pt]{article} % classe basée sur article

%---------------------------------------------------------
%-------Commandes propres à la classe---------------------
\renewcommand{\maketitle}{ % Titre du poly
    %\thispagestyle{empty}
	\noindent 2nde 4 \hfill Lycée Geneviève de Gaulle-Anthonioz 2022-2023 \sujet{}{$\star$}{$\square$}%
	\vspace{-0.4cm}
	\begin{center}
		\huge{\@title}
	\end{center}
}

\newcommand{\appreciation}{ % zone d'appréciation
    \textbf{Nom :}\\
    \textbf{Prénom :}
    \vspace{1cm}
}
\newcommand{\appreciationbis}{ % zone d'appréciation
    \textbf{Nom :}\\
    \textbf{Prénom :}
}
\newcommand{\notes}[1]{
    \begin{center}
        \footnotesize
        \textit{#1}
    \end{center}
}
% espace : calculatrice autorisée ou non ?

\setlength{\parindent}{0pt}% évite les \noindent 

\newcommand{\VF}{\dotfill V $\square$ F $\square$} % vrai faux pour les QCM, 
    %%% à terme faire un environnement QCM

%---------------------------------------------------------
%-------------------Packages requis-----------------------

\RequirePackage{geometry}
\geometry{a4paper,top=1cm,bottom=2cm,right=1.5cm,left=1.5cm}

\RequirePackage{touleboxe}  % A FAIRE


%---------------------------------------------------------
%-------------------Environnements------------------------

\theoremstyle{definition} %environnement--------------	
\newtheorem{exo}{Exercice}